.PHONY: check format
.SILENT: check format

SRC ?= $(shell pwd)/src
FORMAT ?= *.sh
SHELLCHECK ?= shellcheck
SHFMT ?= shfmt


check:
	find $(SRC) -name "$(FORMAT)" -exec $(SHELLCHECK) {} + 
	find $(SRC) -name "$(FORMAT)" -exec $(SHFMT) -d {} + 


format:
	find $(SRC) -name "$(FORMAT)" -exec $(SHFMT) -w {} +
