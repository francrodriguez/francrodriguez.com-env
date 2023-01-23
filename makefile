build:
	docker compose -f deploys/develop/docker-compose.tools.yaml build ;\
	docker compose -f deploys/develop/docker-compose.yaml build

start:
	docker compose -f deploys/develop/docker-compose.yaml up -d

stop:
	docker compose -f deploys/develop/docker-compose.yaml down --remove-orphans

status:
	docker compose -f deploys/develop/docker-compose.yaml ps

logs:
	docker compose -f deploys/develop/docker-compose.yaml logs -f

composer:
	docker compose -f deploys/develop/docker-compose.tools.yaml run --user 1000 --rm composer

npm:
	docker compose -f deploys/develop/docker-compose.tools.yaml run --user 1000 --rm npm

artisan:
	docker exec -it web bash

fix-permissions:
	sudo chmod -R 777 src/francrodriguez.com-src/storage/logs ; \
	sudo chmod -R 777 src/francrodriguez.com-src/storage/framework/sessions ; \
	sudo chmod -R 777 src/francrodriguez.com-src/storage/framework/cache ; \
	sudo chmod -R 777 src/francrodriguez.com-src/public/page-cache/ ; \
	sudo chmod -R 777 src/francrodriguez.com-src/storage/framework/views
