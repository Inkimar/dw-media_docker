# dw-media_docker

Dockerized media server module

## Using the Makefile

`make` starts the services from scratch
`make clean` stops and removes services and data

For other available actions, please see the Makefile

## Using the API

Assuming hostname api.nrm.se (if running locally, edit /etc/hosts and add this name first!):

GET against http://api.nrm.se/MediaServerResteasy/media/v1/`uuid`?format=image/jpeg will return an image

Documentation can be found at: <https://github.com/DINA-Web/mediaserver-module>

Full API docs can be found at: <http://docs.media8.apiary.io>

