set nocompatible
filetype off

" Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" General enhancements
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-flagship'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'sjl/gundo.vim'
Plugin 'thoughtbot/pick.vim'
Plugin 'reedes/vim-pencil'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'nelstrom/vim-mac-classic-theme'
Plugin 'nelstrom/vim-blackboard'
call vundle#end()
filetype plugin indent on
