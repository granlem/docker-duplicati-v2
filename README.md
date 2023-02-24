# docker-duplicati-v2
## Important info
Because auto build is not free anymore the docker image `granlem/duplicati-v2` is very outdated. <br />
Solution 1: Clone this repository and use the `docker-compose -f examples/docker-compose-build.yml up` to build and start <br />
Solution 2: It is recommended to clone this repository and `docker build ./image -t duplicati-v2` yourself. <br />
Hint: Please also check if the `DUPLICATI_DOWNLOAD` ENV is still current in `image/Dockerfile`. (If it worked create a pull request ;)) <br />

## Description
Simple implementation of **Duplicati 2.0** as Docker Image

### Environments
**DATA_FOLDER** - Folder where Configuration Database is stored (Default: /data) <br />
**UPLOAD_FOLDER** - Folder where temporary upload files are stored (Default: /upload) <br />
**WEBSERVICE_PORT** - Port of the web frontend for backup configuration (Default: 8200) <br />
**WEBSERVICE_PASSWORD** - Password for the Webfrontend (By Default password is generated and shown in log) <br />
**ALLOW_NO_PASSWORD** - Do not generate password when no WEBSERVICE_PASSWORD is provided, instead use no password (Default: false) <br />
**WEBSERVICE_ALLOW_HOSTNAMES** - Allowed Hostnames that can access to web frontend seperated by semicolon. (Default: *)


## Quick start
```
mkdir -p $(pwd)/backupme
docker run -it -p 8200:8200 -v $(pwd)/backupme:/backup:ro granlem/duplicati-v2 
```
Afterwards you can add a backup job using web dashboard http://localhost:8200 and use /backup as source to backup /backupme on host system.
