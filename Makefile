
install-git:
	rm -f ~/.gitconfig ~/.gitignore
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	ln -s `pwd`/git/gitignore ~/.gitignore
