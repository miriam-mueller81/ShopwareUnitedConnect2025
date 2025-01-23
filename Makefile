.PHONY: init
init: _project-structure _install

.PHONY: up
up:
	ddev start

.PHONY: down
down:
	ddev stop

.PHONY: ssh
ssh:
	ddev ssh

.PHONY: _install
_install:
	ddev composer i

.PHONY: _project-structure
_project-structure:
	mkdir -p custom/plugins && mkdir -p custom/apps && mkdir -p custom/static-plugins