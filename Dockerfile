FROM gitea/gitea:1.13.0
ADD app.ini /data/gitea/conf/app.ini
ADD gitea.db /data/gitea/gitea.db
