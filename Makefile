up: update upgrade separator
	@echo "✅ update complete"
update:
	sudo apt update
upgrade:
	sudo apt -y upgrade
separator:
	@echo "======================================================================"

cli: git miniconda fzf separator

git:
	@echo "⌛ installing git ..."
	@bash git.sh
miniconda:
	@echo "⌛ installing miniconda ..."
	@bash miniconda.sh
miniconda-up:
	@echo "⌛ updating miniconda ..."
	@conda update conda
fzf:
	@echo "⌛ installing fzf ..."
	@bash fzf.sh
