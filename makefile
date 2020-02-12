E_EMACS = $(shell test -d ~/.emacs.d && echo $$?)
E_NVIM = $(shell test -d ~/.config/nvim && echo $$?)

install:
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
	@echo "Installing..."
	@cp -rf nvim/* ~/.config/nvim
	@cp -rf emacs/* ~/.emacs.d
	@echo "Finished!"
