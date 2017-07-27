default: docker-compose

docker-compose: build-docker-compose run-docker-compose
build-docker-compose:
	docker-compose build --force-rm
run-docker-compose:
	docker-compose up --scale http=5

test:
	curl -v --fail --silent http://localhost:8000/healthz
