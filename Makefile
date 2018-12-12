# Docker parameters
DOCKERCMD = docker
DOCKERREPO = nebulaworks
IMAGENAME = gopresent
DOCKERBUILD = $(DOCKERCMD) build

VERSION := $(shell git describe --dirty)

all: build

build:
	$(DOCKERBUILD) -t "$(DOCKERREPO)/$(IMAGENAME):$(VERSION)" .

push: build
	$(DOCKERCMD) push "$(DOCKERREPO)/$(IMAGENAME):$(VERSION)"
