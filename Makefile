# all: init db build up

.PHONY: all

init:
	@echo "Pulling the DINA mediaserver-module release"
	wget https://archive.org/download/mediaserver/mediaserver.ear -O srv/releases/mediaserver.ear

database:
	docker-compose up -d db.media

server: database
	docker-compose up -d app

up: database
	docker-compose up -d

demo-https:
	cd testing; ./post-SSL-1-image.sh

stop:
	docker-compose stop

build: 
	docker build -t inkimar/vega-server:v2.2 ./wildfly-custom/