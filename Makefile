export DOCKER_BUILDKIT=1

port ?= 8888

build:
	port=${port} docker-compose build

jupyter_up:
	port=${port} docker-compose up -d tensorflow_cert_jupyter

jupyter_down:
	port=${port} docker-compose kill tensorflow_cert_jupyter

clean:
	port=${port} docker-compose down --remove-orphans