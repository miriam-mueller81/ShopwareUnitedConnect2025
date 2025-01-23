.PHONY: init
init: down _project-structure _import-db _install

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
	cp docker/.env.local ./.env

.PHONY: _install
_install:
	ddev composer i
	ddev exec bin/console system:generate-jwt-secret -f
	ddev exec bin/console asset:install
	ddev exec bin/console theme:compile

.PHONY: _import-db
_import-db:
	ddev import-db --file=./docker/data/dump.sql.gz