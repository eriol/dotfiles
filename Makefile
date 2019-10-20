
install-git:
	rm -f ~/.gitconfig ~/.gitignore
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	ln -s `pwd`/git/gitignore ~/.gitignore

install-kde:
	rm -f ~/.local/share/konsole/Molokai.colorscheme
	ln -s `pwd`/kde/konsole/Molokai.colorscheme ~/.local/share/konsole/Molokai.colorscheme

install-zsh:
	if [ ! -f /usr/local/bin/antibody ]; then \
		sudo cp ~/devel/go/bin/antibody /usr/local/bin/; \
	fi;
	rm -f ~/.zshrc ~/.zsh_plugins.txt ~/.aliases.zsh ~/.functions.zsh ~/.variables.zsh
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	ln -s `pwd`/zsh/zsh_plugins.txt ~/.zsh_plugins.txt
	ln -s `pwd`/zsh/aliases.zsh ~/.aliases.zsh
	ln -s `pwd`/zsh/variables.zsh ~/.variables.zsh

install-mbsync:
	rm -f ~/.mbsyncrc
	ln -s `pwd`/mbsync/mbsyncrc ~/.mbsyncrc
	mkdir -p ~/.config/systemd/user/
	rm -f ~/.config/systemd/user/mbsync.*
	ln -s `pwd`/config/systemd/user/mbsync.service ~/.config/systemd/user/mbsync.service
	ln -s `pwd`/config/systemd/user/mbsync.timer ~/.config/systemd/user/mbsync.timer

install-msmtp:
	rm -f ~/.msmtprc
	ln -s `pwd`/msmtp/dot_msmtprc ~/.msmtprc

install-neomutt:
	rm -f ~/.neomutt
	ln -s `pwd`/neomutt ~/.neomutt

install-fontconfig:
	rm -rf ~/.config/fontconfig
	ln -s `pwd`/config/fontconfig ~/.config/fontconfig
	fc-cache -fr -v

install-vdirsyncer:
	rm -rf ~/.vdirsyncer
	ln -s `pwd`/vdirsyncer ~/.vdirsyncer

install-khard:
	rm -rf ~/.config/khard
	ln -s `pwd`/config/khard ~/.config/khard

install-reportbugrc:
	rm -f ~/.reportbugrc
	ln -s `pwd`/reportbugrc ~/.reportbugrc
