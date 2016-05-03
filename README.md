# dw-media_docker
Dockerized media_module<br>
right now exposing the ports to MySQL-server (port 13306) and to the Wildfly-server (port 18080 and port 19990) <br>
change that by editing the docker-compose.yml-file <br>
http://localhost:18080/MediaServerResteasy/


## Makefile
the target **'all'** <br>
1. clones the media_module project
2. compiles the project
3. runs the liquibase-project ( creates the database schema )
4. builds the Wildfly-server
5. starts the 'reverse-proxy nginx

'demo'-target insesrts 3 images through the api <br>
run this to check if your <br>
check for the uuid:s in the database 'media' and table 'MEDIA' <br>
fetch the image by <br>
http://localhost:<port>/MediaServerResteasy/media/v1/<uuid>?format=image/jpeg
