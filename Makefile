.PHONY: init
init: down _project-structure _install _import-db

.PHONY: up
up:
	ddev start

.PHONY: down
down:
	ddev stop

.PHONY: ssh
ssh:
	ddev ssh

.PHONY: _project-structure
_project-structure:
	mkdir -p custom/plugins && mkdir -p custom/apps && mkdir -p custom/static-plugins
	cp docker/.env.local ./.env
	rm -f ./.uniqueid.txt

.PHONY: _install
_install:
	ddev composer i
	ddev exec bin/console system:generate-jwt-secret

.PHONY: _import-db
_import-db:
	ddev import-db --file=./docker/data/dump.sql.gz