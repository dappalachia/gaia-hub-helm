.PHONY: build push run

IMAGE_BASE = dappalachia
IMAGE = gaia-hub-helm
MY_PWD := $(shell pwd)

all: build run

build:
ifdef NOCACHE
	docker build --no-cache -t $(IMAGE_BASE)/$(IMAGE) .
else
	docker build -t $(IMAGE_BASE)/$(IMAGE) .
endif

push:
	docker push $(IMAGE_BASE)/$(IMAGE)

run:
	docker run -it --rm --name $(IMAGE) -v $(MY_PWD):/app $(IMAGE_BASE)/$(IMAGE)
