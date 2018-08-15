# docker-duplicati-v2
## Description
Simple implementation of **Duplicati 2.0** as Docker Image

### Environments
**DATA_FOLDER** - Folder where Configuration Database is stored (Default: /data)
**UPLOAD_FOLDER** - Folder where temporary upload files are stored (Default: /upload)
**WEBSERVICE_PORT** - Port of the web frontend for backup configuration (Default: 8200)
**WEBSERVICE_PASSWORD** - Password for the Webfrontend (Default is no password)

## Quick start
```
mkdir -p $(pwd)/backupme
docker run -p 8200:8200 -d -v $(pwd)/backupme:/backup:ro granlem/duplicati-v2 
```
After you can add a backup job at http://localhost:8200 and use /backup as source to backup /backupme on host system.
