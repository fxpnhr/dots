DOTDIR := ${HOME}/dots

all: _essentials sway foot nvim

_essentials: # for vim, gtk, npm, git, shells
	[ -d  ${HOME}/.config ] || mkdir ${HOME}/.config
	
	[ -f  ${HOME}/.config/user-dirs.dirs ] && rm -rf ${HOME}/.config/user-dirs.dirs
	ln -vsf {${DOTDIR},${HOME}}/.config/user-dirs.dirs
	
	[ -d  ${HOME}/.wallpapers ] && rm -rf ${HOME}/.wallpapers
	ln -vsf {${DOTDIR},${HOME}}/.wallpapers
	
	for i in vimrc gtkrc\-2\.0 npmrc gitconfig bash{_profile,rc,env} zshrc aliases; \
		do [ -f  ${HOME}/.$$i ] && rm -rf ${HOME}/.$$i; \
		ln -vsf {${DOTDIR},${HOME}}/.$$i; \
	done

sway:
	[ -d  ${HOME}/.config/$@ ] && rm -rf ${HOME}/.config/$@
	ln -vsf {${DOTDIR},${HOME}}/.config/$@

foot:
	[ -d  ${HOME}/.config/$@ ] && rm -rf ${HOME}/.config/$@
	ln -vsf {${DOTDIR},${HOME}}/.config/$@

nvim:
	[ -d  ${HOME}/.config/$@ ] && rm -rf ${HOME}/.config/$@
	ln -vsf {${DOTDIR},${HOME}}/.config/$@
