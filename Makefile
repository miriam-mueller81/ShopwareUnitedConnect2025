.PHONY: up, down, ssh

up:
	ddev start

down:
	ddev stop

ssh:
	ddev ssh