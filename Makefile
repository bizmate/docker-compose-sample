SHELL := /usr/bin/env bash

up:
	docker-compose up -d --force-recreate

down:
	docker-compose down

curl_tail:
	docker-compose logs -f curl

php_recreate:
	docker-compose up -d --force-recreate php

php_rm:
	docker-compose rm -sf php

