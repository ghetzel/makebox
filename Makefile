REGISTRY_PREFIX ?= ghetzel/
BOXEN           ?= $(shell find . -type d -path '*/base')
IMAGENAME       ?= $(REGISTRY_PREFIX)$(subst /,,$(dir $(@)))

all: $(BOXEN)

$(BOXEN):
	@echo Building $(REGISTRY_PREFIX)$(subst /,,$(dir $(@)))
	cd $(@) && docker build -t '$(IMAGENAME)' . && docker push '$(IMAGENAME)'

.PHONY: $(BOXEN)