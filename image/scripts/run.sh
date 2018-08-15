#! /bin/bash

DATA_FOLDER=${DATA_FOLDER:-"/data"}
UPLOAD_FOLDER=${UPLOAD_FOLDER:-"/upload"}
WEBSERVICE_PORT=${WEBSERVICE_PORT:-8200}

duplicati-server --server-datafolder="${DATA_FOLDER}" --asynchronous-upload-folder="${UPLOAD_FOLDER}" --webservice-port="${WEBSERVICE_PORT}" --webservice-password=${WEBSERVICE_PASSWORD}
