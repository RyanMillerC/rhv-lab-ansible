.PHONY: help down up

help:
	@echo 'Bring up and down lab environment.'
	@echo '`make up`   - Start lab'
	@echo '`make down` - Shutdown lab'

down:
	nohup ansible-playbook \
		--vault-password-file "${HOME}/vars.key" \
		--inventory ./inventory \
		./playbooks/shutdown.yml \
		&> ./shutdown.log &

up:
	nohup ansible-playbook \
		--vault-password-file "${HOME}/vars.key" \
		--inventory ./inventory \
		./playbooks/startup.yml \
		&> ./startup.log &
