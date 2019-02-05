# all: init db build up

init:
	@echo "Pulling the DINA mediaserver-module release"
	wget https://archive.org/download/mediaserver/mediaserver.ear -O srv/releases/mediaserver.ear

db:
	docker-compose up -d db.media
	@echo "Waiting for db to start"
	sleep 10

#build:
#	docker-compose build

up: db
	docker-compose up -d

demo-https:
	cd testing; ./post-SSL-1-image.sh

clean: stop rm

stop:
	docker-compose stop

#build: 
#	docker build -t vegadare/mediaserver:${VERSION} ./wildfly-custom/

rm:
	docker-compose rm -vf
	rm -f srv/deployments/mediaserver.ear
	rm -f srv/deployments/mediaserver.ear.deployed
	rm -f srv/deployments/mediaserver.ear.failed
