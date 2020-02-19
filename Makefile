REGISTRY_PREFIX ?= ghetzel/makebox:
BOXEN           ?= $(shell find . -type d -path '*/base')
IMAGENAME       ?= $(REGISTRY_PREFIX)$(subst /,,$(dir $(@)))

all: $(BOXEN)
	REGISTRY_PREFIX=ghetzel/ make alias

alias: $(BOXEN)

$(BOXEN):
	@echo Building $(REGISTRY_PREFIX)$(subst /,,$(dir $(@)))
	cd $(@) && docker build -t '$(IMAGENAME)' . && docker push '$(IMAGENAME)'

.PHONY: $(BOXEN)