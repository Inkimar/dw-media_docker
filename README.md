# dw-media_docker

Dockerized media server module <br>
Relies on that there is a proxy [proxy](https://github.com/DINA-Web/dw-proxy) <p>

See the Dockerfile for the Wildfly-version.


NB 1: Is set up with 'api.nrm.se', configured in the 'docker-compose.yml' and in the 'mysql-autoload/update-admin_config.sql'<p>
NB 2: The artifact 'ear'-file is fetched and placed in in 'wildfly'-dir, to deploy <p>

***

# Wildfly setting parameters

## increase the 'max-post-size' for Wildfly.
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

## increase heap size for Wildfly

2 ways: (A) and (B)

(A) <p> 
1. operating system :  $ export JAVA_OPTS="-Xms1024M -Xmx4096M -XX:MaxHeapSize=4096M -Djava.net.preferIPv4Stack=true"
2. bin/standalone.conf , change the PRESERVE_JAVA_OPTS from 'true' to 'false' ('true' is the default)
3. bin/standalone.sh 

(B) <p>
1. edit the file 'bin/standalone.conf' , set JAVA_OPTS.
2. default value : PRESERVE_JAVA_OPTS=true 
2. default value : JAVA_OPTS="-Xms64m -Xmx512m -XX:MetaspaceSize=96M -XX:MaxMetaspaceSize=256m -Djava.net.preferIPv4Stack=true" 
3. new value : JAVA_OPTS="-Xms1024M -Xmx4096M -XX:MaxHeapSize=4096M -Djava.net.preferIPv4Stack=true"
3. bin/standalone.sh 


## stop wildfly
> ./jboss-cli.sh --connect command=:shutdown 

***

## Using the Makefile

`make` starts the services from scratch ( fetches the artifacts as well ) <br>

`make clean` stops and removes services and data<br>

For other available actions, please see the Makefile




## Using the API

Assuming hostname api.nrm.se (if running locally, edit /etc/hosts and add the hostname):<br>

GET against http://api.nrm.se/MediaServerResteasy/media/v1/`uuid`?format=image/jpeg will return an image<br>

Documentation can be found at: <https://github.com/DINA-Web/mediaserver-module> <br>


# Different fronts

## with vega-front
test 
1. curl -L http://localhost:8080/mserver/rest/file/check
2. curl -v -L http://media.nrm.se/mserver/rest/file/check 