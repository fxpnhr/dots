DOTDIR := ${HOME}/dots

all: init sway foot vim

init:
	for i in vimrc gtkrc\-2\.0 gitconfig bash{_profile,rc,env} zshrc aliases; \
		do [ -f  ${HOME}/.$$i ] && rm -rf ${HOME}/.$$i; \
		ln -vsf {${DOTDIR},${HOME}}/.$$i; \
	done
	[ -f  ${HOME}/.config/user-dirs.dirs ] && rm -rf ${HOME}/.config/user-dirs.dirs
	ln -vsf {${DOTDIR},${HOME}}/.config/user-dirs.dirs
	[ -d  ${HOME}/.wallpapers ] && rm -rf ${HOME}/.wallpapers
	ln -vsf {${DOTDIR},${HOME}}/.wallpapers

sway:
	[ -d  ${HOME}/.config/$@ ] && rm -rf ${HOME}/.config/$@
	ln -vsf {${DOTDIR},${HOME}}/.config/$@

foot:
	[ -d  ${HOME}/.config/$@ ] && rm -rf ${HOME}/.config/$@
	ln -vsf {${DOTDIR},${HOME}}/.config/$@

vim: nvim
	[ -f  ${HOME}/.$@rc ] && rm -rf ${HOME}/.$@rc
	ln -vsf {${DOTDIR},${HOME}}/.$@rc

nvim:
	[ -d  ${HOME}/.config/$@ ] && rm -rf ${HOME}/.config/$@
	ln -vsf {${DOTDIR},${HOME}}/.config/$@
