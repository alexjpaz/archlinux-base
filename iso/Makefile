dockerTag=alexjpaz/archlinux:latest

default: generate

build:
	docker build -t $(dockerTag) .

generate: build
	docker run --rm --privileged -v $(PWD)/out:/out $(dockerTag)

shell: build
	docker run --rm --privileged -it -v $(PWD)/data:/data $(dockerTag) /bin/bash


