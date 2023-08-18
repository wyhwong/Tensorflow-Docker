export DOCKER_BUILDKIT=1

export PORT?=8888
export TZ?=Asia/Hong_Kong
export USERNAME?=$(shell whoami)
export USER_ID?=$(shell id -u)
export GROUP_ID?=$(shell id -g)

build:
	docker-compose build

start:
	docker-compose up -d

clean:
	docker-compose down --remove-orphans
