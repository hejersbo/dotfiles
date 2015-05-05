Installation:

    git clone https://github.com/hejersbo/dotfiles.git ~/dotfiles

Create symlinks:

    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc (optional)
    ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/xmodmap/xmodmap ~/.Xmodmap
    ln -s ~/dotfiles/bash/bashrc ~/.bashrc
    ln -s ~/dotfiles/tig/tigrc ~/.tigrc

Install Vim plugins:

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    launch vim and run :PluginInstall

Install Solarized colors for gnome-terminal:

    git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git

    ./install.sh (first copy default terminal profile - to enable uninstall)

Install xterm-16color terminfo (for Solarized in tmux):
    

    sudo tic ~/dotfiles/xterm16-color.txt


