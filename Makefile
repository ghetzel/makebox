all: build push

BOXES = $(wildcard */*)

.PHONY: $(BOXES)
$(BOXES):
	@echo "$(@)"

build:
	./build.sh build

push:
	./build.sh push
