VERSION=0.12.0-0
PROJECT=vmakoto

all: build

build:
	docker build --pull -t ${PROJECT}/prometheus-jmx-exporter-kubernetes:${VERSION} .

push: build
	docker -- push ${PROJECT}/prometheus-jmx-exporter-kubernetes:${VERSION}

.PHONY: all build push
