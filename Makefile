VERSION = 0.4
all: release up

release:
	@echo "Pulling the DINA mediaserver-module release v0.4"
	wget https://github.com/DINA-Web/mediaserver-module/releases/download/v0.4/mediaserver-ear.ear -O srv/deployments/mediaserver.ear
	wget https://github.com/DINA-Web/mediaserver-module/releases/download/v0.4/media-dump.sql -O mysql_media-autoload/media-dump.sql

up:
	docker-compose up

build-app:
	docker-compose build --no-cache app

demo:
	./mediaserver-module/docs/example-files/aka.sh

# cleaning
clean: stop rm

stop:
	docker-compose stop
rm:
	docker-compose rm -vf

rm-releseas:
	rm srv/deployments/mediaserver.ear
	rm srv/deployments/mediaserver-ear.ear.deployed
	rm srv/deployments/mediaserver-ear.ear.failed
	rm mysql_media-autoload/*.sql
