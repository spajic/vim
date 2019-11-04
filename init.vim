" ~/.config/nvim/init.vim 
" 
" ===========
" Plugins
" ===========
" auto-install vim-plug 
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                   
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif                                                                                                                                 
call plug#begin('~/.config/nvim/plugged')

" Collection of color schemes
Plug 'rafi/awesome-vim-colorschemes'

" Additional targets
Plug 'wellle/targets.vim'

call plug#end()

" Use the colorscheme”
colorscheme gruvbox

" Prevent a user from using arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Show line numbers
set number 
