dockerTag=alexjpaz/archlinux:latest

default: generate

build:
	./tasks docker build -t $(dockerTag) .

generate: build
	./tasks docker run --rm --privileged -v $(PWD)/out:/out $(dockerTag)

shell: build
	docker run --rm --privileged -it -v $(PWD)/data:/data $(dockerTag) /bin/bash


