# all: init db build up

init:
	@echo "Pulling the DINA mediaserver-module release"
	wget https://archive.org/download/mediaserver/mediaserver.ear -O srv/releases/mediaserver.ear

database:
	docker-compose up -d db.media

server: database
	docker-compose up -d app

up: db
	docker-compose up -d

demo-https:
	cd testing; ./post-SSL-1-image.sh

clean: stop rm

stop:
	docker-compose stop

build: 
	docker build -t inkimar/vega-server:v2.1 ./wildfly-custom/

rm:
	docker-compose rm -vf
	rm -f srv/deployments/mediaserver.ear
	rm -f srv/deployments/mediaserver.ear.deployed
	rm -f srv/deployments/mediaserver.ear.failed
