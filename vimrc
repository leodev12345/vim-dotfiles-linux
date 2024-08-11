" vundle plugins
filetype off
set rtp+=/home/leo/.vim/bundle/Vundle.vim
call vundle#begin('/home/leo/.vim/bundle')
Plugin 'VundleVim/Vundle.vim'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'tiagofumo/vim-nerdtree-syntax-highlight'
call vundle#end()          
filetype plugin indent on

" vim-plug plugins
set nocompatible
call plug#begin()
Plug 'https://github.com/preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'leodev12345/vim-devicons'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'rakr/vim-one'
Plug 'tpope/vim-fugitive'
call plug#end()

" general settings
set encoding=UTF-8
set autochdir
set guifont=DejaVuSansM\ Nerd\ Font\ Mono\ 12
syntax on
set background=dark
colorscheme one
set number
set relativenumber
set guioptions-=T
set guioptions-=R
set guioptions-=L
set guioptions-=r
set guioptions-=b
set guioptions-=h
set guioptions=d
set guioptions-=m
set ts=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set clipboard=unnamed
set ambiwidth=single
set noshowmode
set autoread
set termwinsize=15x0

" autostart
autocmd VimEnter * silent NERDTreeTabsToggle
"NERDtree config
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['css'] = "2965f1"
let g:NERDTreeExtensionHighlightColor['html'] = "f06529"
let g:NERDTreeExtensionHighlightColor['js'] = "f0db4f"
let g:NERDTreeExtensionHighlightColor['py'] = "ffde57"
let g:NERDTreeExtensionHighlightColor['md'] = "D3D3D3"
let g:NERDTreeExtensionHighlightColor['json'] = "818589"
let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = "F1502F"
let g:NERDTreeExactMatchHighlightColor['.gitconfig'] = "F1502F"
let g:NERDTreeExactMatchHighlightColor['.gitattributes'] = "F1502F"
let g:NERDTreeExactMatchHighlightColor['.gitmodules'] = "F1502F"
let g:NERDTreeExactMatchHighlightColor['LICENSE'] = "D3D3D3"
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$', '.swp', '^__pycache__$']

" air-line config
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' '
let g:airline_symbols.notexists = '∄'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_section_z = '%l/%L 󰦨'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let airline#extensions#tabline#tabs_label = '󰓩'
let airline#extensions#tabline#show_splits = 0 
let airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0

"mapping hotkeys
"switching tabs
nmap <Tab> gt
nmap <C-Tab> gT
"map d to delete and x to cut
nnoremap d "_d
vnoremap d "_d
nnoremap xx "*dd
nnoremap x "*d
"map redo to r
nnoremap r <C-R>
"plugin hotkeys
nmap <C-m> <Plug>MarkdownPreviewToggle
