start-all:
	docker-compose -f docker-compose.development.yml build
	docker-compose -f docker-compose.development.yml up

start-all-multiple-workers:
	docker-compose -f docker-compose.development.yml build
	docker-compose -f docker-compose.development.yml up --scale worker=4

chown:
	sudo chown -R $(USERNAME):$(USERNAME) *

ssh:
	docker-compose -f docker-compose.development.yml exec api bash

stop:
	docker-compose -f docker-compose.development.yml down

rails-console:
	docker-compose -f docker-compose.development.yml exec api rails c

# This is for Windows
start-all:
	docker-compose -f docker-compose.windows.yml build
	docker-compose -f docker-compose.windows.yml up

start-all-multiple-workers:
	docker-compose -f docker-compose.windows.yml build
	docker-compose -f docker-compose.windows.yml up --scale worker=4

chown:
	sudo chown -R $(USERNAME):$(USERNAME) *

ssh:
	docker-compose -f docker-compose.windows.yml exec api bash

stop:
	docker-compose -f docker-compose.windows.yml down

rails-console:
	docker-compose -f docker-compose.windows.yml exec api rails c
