
install-git:
	rm -f ~/.gitconfig ~/.gitignore
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	ln -s `pwd`/git/gitignore ~/.gitignore

install-zsh:
	if [ ! -f /usr/local/bin/antibody ]; then \
		sudo cp ~/devel/go/bin/antibody /usr/local/bin/; \
	fi;
	rm -f ~/.zshrc ~/.zsh_plugins.txt ~/.aliases.zsh ~/.functions.zsh ~/.variables.zsh
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	ln -s `pwd`/zsh/zsh_plugins.txt ~/.zsh_plugins.txt
	ln -s `pwd`/zsh/aliases.zsh ~/.aliases.zsh
	ln -s `pwd`/zsh/variables.zsh ~/.variables.zsh
