## Основы

## Links
- https://neovim.io
- https://vim-adventures.com
- https://www.vimfromscratch.com
  - https://www.vimfromscratch.com/articles/vim-for-ruby-and-rails-in-2019/
  - https://www.vimfromscratch.com/articles/vim-for-javascript-and-react-in-2019/
- https://github.com/junegunn/vim-plug


## motions
- h - влево (самая левая кнопка)
- j - вниз (похожа на стрелку вниз)
- k - вверх
- l - вправо (самая правая кнопка)


- o - add new line Below and start to input
- O - add new line Above and start to input
-

- f{char} - move to nearest `char` on the right
- F{char} - move to nearest `char` from the left
- t{char}, T{char} - то же самое, но останавливается за один символ до искомого
- ; - repeat the latest motion
- . - repeat the latest command


### Combine numbers and operators with motions
- 7w - go 7 words right, etc...
- 5x - delete 5 chars 
- d$ - delete to the end of line
- dG - remove everything from current line to the end of file

### Text object selections
- aw - a word
- iw - inner word
- ap - a paragraph, ip - inner paragraph


- daw - delete a word (including spaces after it)
- yi{ - copy everything inside {}
- dat - deleta a tag (including spaces after)
- ci{ - change inner text inside {} - удобно поменять тело функции

- w - next word start
- b - back to start of word
- e - end of word
- G - last line of file
- xG - goto line number x
- gg - beginning of file
- ( / ) - go to prev / next sentence
- { / } - go to prev / next paragraph
- $ - end of line
- 0 - start of line
- ^ - frist non-blank
- "``" - goto previous position 

- wq - write quit
- wqa - write quit all

- v - visual mode
- V - visual mode with selected line

- u - undo
- Ctrl + r - redo

## Copy-paste
- выделить кусок текста в visual mode
- y (yank) - put text in register
- d - cut
- p (put, pase)

# Plugins

## Auto-Install plugin-manager
```
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.config/nvim/plugged')

" Collection of color schemes
Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

" Use the colorscheme”
colorscheme OceanicNext
```

## Reload config
`:source $MYVIMRC`





