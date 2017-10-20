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

    Download plug.vim in autoload directory

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    launch vim and run :PlugInstall

Install Solarized colors for gnome-terminal:

    git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git

    ./install.sh (first copy default terminal profile - to enable uninstall)

Install xterm-16color terminfo (for Solarized in tmux):

    sudo tic ~/dotfiles/xterm16-color.txt

Install Powerline pre-patched fonts:

    git clone https://github.com/powerline/fonts.git

    ./install.sh

    configure terminal to use DejaVu Sans Mono for Powerline 12

Install ripgrep:

    https://github.com/BurntSushi/ripgrep
