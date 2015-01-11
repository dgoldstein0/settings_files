~/.vimrc:
	ln -s ~/settings_files/vimrc ~/.vimrc

~/.vim:
	mkdir ~/.vim

# only run this once
install_coffeevim: ~/.vim
	bash -c "cd ~/.vim; unzip ~/settings_files/vim-coffee-script-v002.zip"

~/.inputrc:
	ln -s ~/settings_files/inputrc ~/.inputrc

# only run this once
install_gitconfig:
	echo "[include]\n\tpath = settings_files/gitconfig" >> ~/.gitconfig

# only run this once
install_hgrc:
	echo "\n%include settings_files/hgrc\n" >> ~/.hgrc
