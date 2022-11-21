local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing packer...')
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  print('Done.')

  vim.cmd('packadd packer.nvim')
  install_plugins = true
end

require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

  use 'nvim-lualine/lualine.nvim'
  use 'arcticicestudio/nord-vim'
  use 'tpope/vim-sensible'
  use 'tpope/vim-abolish'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-repeat'
  use 'tpope/vim-dispatch'
  use 'tpope/vim-sleuth'
  use 'tpope/vim-flagship'
  use 'tpope/vim-obsession'
  use 'thoughtbot/pick.vim'
  use 'reedes/vim-pencil'
  use 'wellle/targets.vim'
  use 'airblade/vim-gitgutter'
  use { 'junegunn/fzf', run =":call fzf#install()" }
  use 'junegunn/fzf.vim'
  use 'junegunn/vim-easy-align'
  use 'mileszs/ack.vim'
  use 'florentc/vim-tla'
  use 'inkarkat/vim-ingo-library'
  use 'inkarkat/vim-mark'
  use 'tommcdo/vim-exchange'
  use 'godlygeek/tabular'

  if install_plugins then
    require('packer').sync()
  end
end)

