" vundle plugins
filetype off
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
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
Plug 'ryanoasis/vim-devicons'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'rakr/vim-one'
Plug 'tpope/vim-fugitive'
call plug#end()

" general settings
set encoding=UTF-8
cd C:\Users\Korisnik\Desktop\Coding
set autochdir
set guifont=DejaVuSansM\ Nerd\ Font\ Mono:h11
syntax on
set background=dark
colorscheme one
let &shell='wsl.exe'
set number
set guioptions-=T
set guioptions-=R
set guioptions-=L
set guioptions-=r
set guioptions-=b
set guioptions-=h
set guioptions=d
set guioptions=m
set ts=4
set autoindent
set backspace=indent,eol,start
set clipboard=unnamed
set ambiwidth=single
set noshowmode
set autoread

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
let g:NERDTreeExactMatchHighlightColor['LICENSE'] = "D3D3D3"
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$', '.swp', '^__pycache__$']

" air-line config
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' '
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.notexists = '∄'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_section_z = '%l/%L 󰦨'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let airline#extensions#tabline#tabs_label = ''
let airline#extensions#tabline#show_splits = 0 
let airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0

"mapping hotkeys
"copy, cut, paste
nmap <C-v> "+gP 
xnoremap <C-c> y
xnoremap <C-x> x
"select all
nmap <C-a> ggVG
"delete to black hole register
nnoremap d "_d
vnoremap d "_d
"switching tabs
nmap <Tab> gt
nmap <C-Tab> gT
"plugin hotkeys
nmap <C-m> <Plug>MarkdownPreviewToggle
