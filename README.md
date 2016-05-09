# dw-media_docker
Dockerized media_module<br>
right now exposing the ports to MySQL-server (port 13306) and to the Wildfly-server (port 18080 and port 19990) <br>
change that by editing the docker-compose.yml-file <br>
http://localhost:18080/MediaServerResteasy/


## Makefile
the target **'all'** <br>

1. 'release', fetches the artifact (ear-file) and the database dump.
2. 'build-app', builds the application server ('app').
3. 'up-db', starts the database-engine (+ creates the schema)
4. 'up-app', start the application server (wildfly)


### 'demo'-target inserts 3 images using the api 
run the script 'testing/post-3-images.sh' to check if the mediaserver is running<br>
check for the uuid:s in the table 'media.MEDIA' <br>
see the script 'testing/getExamples.sh' on how to fetch metadata- and the media-file<br>

### How to configure
the table media.ADMIN_CONFIG holds some vital key/values <br>
if you would like to change the values , update the 'mysql_media-autoload/update-admin_config.sql'-file <br>


