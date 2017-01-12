MSG=$$(./git-log.sh)

deploy:
	git submodule update --remote
	@echo "$(MSG)"
	git add -A
	git commit -m "$(MSG)"
	#git push
	@echo "Submodules updated and pushed"
 	