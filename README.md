# dw-media_docker

Dockerized media server module <br>
NB 1: Is set up with 'api.nrm.se', configured in the 'docker-compose.yml' and in the 'mysql-autoload/update-admin_config.sql'<br>
NB 2: For testing , 2 files that post images to the server
1. target 'demo-https' that starts ./testing/post-3-images-https-style.sh
2. target 'demo-https' that starts ./testing/post-3-images-http-style.sh
*if you have not set up 'api.nrm.se' then you can replace 'api.nrm.se' with 'localhost'*
 
## Using the Makefile

`make` starts the services from scratch ( fetches the artifacts as well ) <br>

`make clean` stops and removes services and data<br>

###Directories

1. './srv/deployments/', check  to see if the artifact was deployed or not
2. './srv/log/', contains wildfly's 'server.log(s)'
3. './srv/media/', mediafiles are stored here
4. './srv/releases/', the artifact (ear-file) is stored here


For other available actions, please see the Makefile

## Using the API

Assuming hostname api.nrm.se (if running locally, edit /etc/hosts and add this name first!):<br>

GET against http://api.nrm.se/MediaServerResteasy/media/v1/`uuid`?format=image/jpeg will return an image<br>

Documentation can be found at: <https://github.com/DINA-Web/mediaserver-module> <br>

Full API docs can be found at: <http://docs.media8.apiary.io><br>

