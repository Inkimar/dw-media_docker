BASE = https://github.com/DINA-Web/mediaserver-module/releases/download
VERSION = v0.4

all: init build db up
# all: init db build up

init:
	@echo "Pulling the DINA mediaserver-module release"
	wget $(BASE)/$(VERSION)/mediaserver-ear.ear -O srv/deployments/mediaserver.ear
	wget $(BASE)/$(VERSION)/media.dump.sql -O mysql-autoload/media.dump.sql

db:
	docker-compose up -d db.media
	@echo "Waiting for db to start"
	sleep 10

build:
	docker-compose build

up: db
	docker-compose up -d

demo:
	@echo "Test to upload images to server using curl ( remember to add 'api.nrm.se' to /etc/hosts)"
	cd testing; ./post-3-images.sh

clean: stop rm

stop:
	docker-compose stop
rm:
	docker-compose rm -vf
	rm -f srv/deployments/mediaserver.ear
	rm -f srv/deployments/mediaserver.ear.deployed
	rm -f srv/deployments/mediaserver.ear.failed
	rm -f mysql-autoload/media.dump.sql
