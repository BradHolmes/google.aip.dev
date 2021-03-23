HOST=$(shell hostname)
DIR_TOPLEVEL := $(shell git rev-parse --show-toplevel)
DIR_STATIC_DOCS := $(DIR_TOPLEVEL)/aip
HUGO_BIN_URL := https://github.com/gohugoio/hugo/releases/download/v0.81.0/hugo_extended_0.81.0_Linux-64bit.tar.gz
HUGO_BIN = LD_LIBRARY_PATH=/opt/ncbi/gcc/7.3.0/lib64 ./hugo --source $(DIR_STATIC_DOCS) --config config.yaml --cleanDestinationDir --destination generated/

.PHONY: clean serve init docs_init

hugo:
	curl -L $(HUGO_BIN_URL) | tar xz hugo

clean:

serve:
	$(HUGO_BIN) --bind $(HOST) --baseURL "" server

init: hugo
	git submodule update --init --recursive

cli:
	$(DIR_TOPLEVEL)/dist/clidocgen_docsy -destdir $(DIR_STATIC_DOCS_GENERATED_CLI)

docs_init: clean init cli

docs_dev: docs_init
	$(HUGO_BIN)

docs: docs_init
	$(HUGO_BIN) --minify

