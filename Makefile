MSG=$$(./git-log.sh)

deploy:
	git submodule update --remote
	git add -A
	git commit -m "$(MSG)"
	git push 	