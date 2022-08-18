"*****************************************************************************
" init vim plugins(setting up for dein which is neovim plugin manager)
"*****************************************************************************"


" plugin installation directory
let s:plugin_repo = expand('~/.config/nvim/plugin_repos')
let s:dein_repo_path = s:plugin_repo . '/repos/github.com/Shougo/dein.vim'


" clone dein if dein does not installed
if !isdirectory(s:dein_repo_path)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_path
endif

" Required:
if &compatible
  set nocompatible               " Be iMproved
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

""""""""" custom function """"""""""""
function GetTomlFiles(dirname)
  let toml_file_list = split(globpath(a:dirname, '*.toml'), '\n')
  return toml_file_list
endfunction

""""""""" init dein """"""""""""
" Required:
if dein#load_state(s:plugin_repo)
  call dein#begin(s:plugin_repo)

  """""" Let dein manage dein """"""
  " Required:
  call dein#add(s:dein_repo_path)

  """""" Load plugins from other TOML files: """""""
  " 'dir:dein' is loaded when neovim starts to run
  for toml in GetTomlFiles('~/.config/nvim/dein/')
    call dein#load_toml(toml, {'lazy': 0})
  endfor
  call dein#load_toml('~/.config/nvim/dein/lsp.toml', {'lazy': 0})

  " 'dir:dein_lazy' is loaded when the plugin targeted to run
  for toml_lazy in GetTomlFiles('~/.config/nvim/dein_lazy/')
    call dein#load_toml(toml_lazy, {'lazy': 1})
  endfor


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

