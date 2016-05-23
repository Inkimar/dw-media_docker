# dw-media_docker

Dockerized media server module <br>
Relies on that there is a proxy [proxy](https://github.com/DINA-Web/dw-proxy) <br>
NB 1: Is set up with 'api.nrm.se', configured in the 'docker-compose.yml' and in the 'mysql-autoload/update-admin_config.sql'<br>
NB 2: The artifact 'ear'-file is fetched and placed in in 'releases'-dir, to deploy - copy to the'deployments'-dir <br>

## Using the Makefile

`make` starts the services from scratch ( fetches the artifacts as well ) <br>

`make clean` stops and removes services and data<br>

For other available actions, please see the Makefile

## Using the API

Assuming hostname api.nrm.se (if running locally, edit /etc/hosts and add this name first!):<br>

GET against http://api.nrm.se/MediaServerResteasy/media/v1/`uuid`?format=image/jpeg will return an image<br>

Documentation can be found at: <https://github.com/DINA-Web/mediaserver-module> <br>

Full API docs can be found at: <http://docs.media8.apiary.io><br>

