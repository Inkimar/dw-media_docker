# dw-media_docker

Dockerized media server module <br>
Relies on that there is a proxy [proxy](https://github.com/DINA-Web/dw-proxy) <br>

See the Dockerfile for the Wildfly-version.


NB 1: Is set up with 'api.nrm.se', configured in the 'docker-compose.yml' and in the 'mysql-autoload/update-admin_config.sql'<br>
NB 2: The artifact 'ear'-file is fetched and placed in in 'wildfly'-dir, to deploy <br>

# increasing post-size for Wildfly.
The default 'max-post-size' is pretty small i wildfly<p>
You need to increase the size in jboss by entering the following command (see the commands.cli-file) <p>
4200000000 bytes  which equals  4.2GB

1. /subsystem=undertow/server=default-server/http-listener=default/:write-attribute(name=max-post-size,value=4200000000) 


or this can be done later by logging in -> 

1. ~/bin/jboss-cli.sh --connect
2. 
/subsystem=undertow/server=default-server/http-listener=default/:write-attribute(name=max-post-size,value=4200000000)  

To verify the max-post-size

1. ./jboss-cli.sh --connect
2. [standalone@localhost:9990 /] /subsystem=undertow/server=default-server/http-listener=default/:read-attribute(name=max-post-size) 


## Using the Makefile

`make` starts the services from scratch ( fetches the artifacts as well ) <br>

`make clean` stops and removes services and data<br>

For other available actions, please see the Makefile


## Using the API

Assuming hostname api.nrm.se (if running locally, edit /etc/hosts and add the hostname):<br>

GET against http://api.nrm.se/MediaServerResteasy/media/v1/`uuid`?format=image/jpeg will return an image<br>

Documentation can be found at: <https://github.com/DINA-Web/mediaserver-module> <br>


