all: clone build-src build-db build-app up-web
#all: build-src build-db build-app up-web

clone:
	@echo "Pulling latest sources from the DINA mediaserver-module"
	git clone https://github.com/DINA-Web/mediaserver-module.git

build-src:
	cd ./mediaserver-module;mvn clean install
	cp ./mediaserver-module/ear/target/mediaserver-ear.ear srv/releases
	cp ./mediaserver-module/ear/target/mediaserver-ear.ear srv/deployments

build-db:
	docker-compose up -d db.media
	sleep 10
	cd ./mediaserver-module/db;mvn clean install

build-app:
	docker-compose build --no-cache app

up-web:
	docker-compose up -d web

demo:
	./mediaserver-module/docs/example-files/aka.sh

# cleaning
clean: stop rm

stop:
	docker-compose stop
rm:
	docker-compose rm -vf

rm-repo:
	rm -rf mediaserver-module
	rm srv/releases/mediaserver-ear.ear
	rm srv/deployments/mediaserver-ear.ear
	rm srv/deployments/mediaserver-ear.ear.deployed