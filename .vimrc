set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'tikhomirov/vim-glsl'

Plugin 'sheerun/vim-polyglot'

Plugin 'scrooloose/nerdtree'

Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on
syntax on

" YouCompleteMe options
"" Ask once per conf file
let g:ycm_confirm_extra_conf_globlist = ['~/dev']
let g:ycm_filetype_blacklist = {'rmd': 1}

" NERDTree settings
let g:NERDTreeQuitOnOpen=0
"" NERDTree toggle button
map <C-f> :NERDTreeToggle<Enter>
"" Open NERDTree on vim startup
autocmd vimenter * NERDTree
"" Close vim if NERDTree is the last tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Enhanced cpp highlight options
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

" Fix backspace deletion bug
set backspace=2

" Good defaults for most langauges
set tabstop=2 shiftwidth=2 expandtab autoindent
set number relativenumber

" .dockerfile highlight
au BufRead,BufNewFile *.dockerfile setfiletype dockerfile

" Gazebo/ROS development: xml type files
au BufRead,BufNewFile *.sdf set syntax=xml
au BufRead,BufNewFile *.world set syntax=xml
au BufRead,BufNewFile *.launch set syntax=xml
au BufRead,BufNewFile model.config set syntax=xml
