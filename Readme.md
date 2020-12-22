# Gitea server for local development
## database creation:
```console
docker run --rm -it --name gitea -p 3000:3000 -v $PWD/data:/data gitea/gitea:1.13.0
```
in another terminal
```console
docker exec -u git -it gitea gitea admin create-user --username hkube --password 123456 --email hkube@hkube.io --admin --must-change-password=false
```
copy gitea/gitea.db and gitea/conf/app.ini

this creates the sqlit3 database and creates a user with
username: hkube
password: 123456

## to run locally
docker run -d --name gitea -p 3010:3010 hkube/gitea-dev:v1.13.0-0