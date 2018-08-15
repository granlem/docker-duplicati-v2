#! /bin/bash

DATA_FOLDER=${DATA_FOLDER:-"/data"}
UPLOAD_FOLDER=${UPLOAD_FOLDER:-"/upload"}
WEBSERVICE_PORT=${WEBSERVICE_PORT:-8200}
ALLOW_NO_PASSWORD=${ALLOW_NO_PASSWORD:-false}

# If no "WEBSERVICE_PASSWORD" is not set than create a password (security-by-default)
if [ -z $WEBSERVICE_PASSWORD ] && [ $ALLOW_NO_PASSWORD = true ]; then
    WEBSERVICE_PASSWORD=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-16};echo;)
    echo "The generated web frontent password is ${WEBSERVICE_PASSWORD}"
fi

duplicati-server --webservice-interface=any --server-datafolder="${DATA_FOLDER}" --asynchronous-upload-folder="${UPLOAD_FOLDER}" --webservice-port="${WEBSERVICE_PORT}" --webservice-password="${WEBSERVICE_PASSWORD}"
