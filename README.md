# docker-duplicati-v2
## Description
Simple implementation of **Duplicati 2.0** as Docker Image

### Environments
**DATA_FOLDER** - Folder where Configuration Database is stored (Default: /data) <br />
**UPLOAD_FOLDER** - Folder where temporary upload files are stored (Default: /upload) <br />
**WEBSERVICE_PORT** - Port of the web frontend for backup configuration (Default: 8200) <br />
**WEBSERVICE_PASSWORD** - Password for the Webfrontend (By Default password is generated and shown in log) <br />
**ALLOW_NO_PASSWORD** - Do not generate password when no WEBSERVICE_PASSWORD is provided, instead use no password (Default: false)

## Quick start
```
mkdir -p $(pwd)/backupme
docker run -t -p 8200:8200 -v $(pwd)/backupme:/backup:ro granlem/duplicati-v2 
```
After you can add a backup job at http://localhost:8200 and use /backup as source to backup /backupme on host system.
