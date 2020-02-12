E_EMACS = $(shell test -d ~/.emacs.d && echo $$?)
E_NVIM = $(shell test -d ~/.config/nvim && echo $$?)

install:
	@echo "Starting..."
 ifeq ($(E_EMACS),0)
	@echo "Emacs config dir is already existed."
 else
	@echo "Creating emacs config dir..."
	@mkdir ~/.emacs.d
 endif
 ifeq ($(E_NVIM),0)
	@echo "Nvim config dir is already existed."
 else
	@echo "Creating nvim config dir..."
	@mkdir -p ~/.config/nvim
 endif
	@echo "Copying..."
	@cp -rf nvim/* ~/.config/nvim
	@cp -rf emacs/* ~/.emacs.d
	@echo "Done."

backup:
	@echo "Starting..."
	@ls ~/.emacs.d | grep -v 'elpa\|auto-save-list\|recentf' | xargs -I REP cp -rf ~/.emacs.d/REP emacs
	@ls ~/.config/nvim | grep -v 'autoload\|plugged' | xargs -I REP cp -rf ~/.config/nvim/REP nvim
	@echo "Done."
