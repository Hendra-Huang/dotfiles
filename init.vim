"-----Plugins-----"
call plug#begin('~/.vim/plugged')

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'pbogut/deoplete-padawan', { 'for': ['php', 'html.twig'] }
"Plug 'arnaud-lb/vim-php-namespace', { 'for': ['php'] }
"Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript', 'javascript.jsx'] }
Plug 'ConradIrwin/vim-bracketed-paste'
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
Plug 'Yggdroot/indentLine'
Plug 'bronson/vim-trailing-whitespace'
Plug 'gregsexton/MatchTag', { 'for': ['html', 'htwml.twig'] }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
"Plug 'neomake/neomake'
"Plug 'jaawerth/neomake-local-eslint-first', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'flowtype/vim-flow', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
"Plug 'mxw/vim-jsx', { 'for': ['jsx'] }
Plug 'beyondwords/vim-twig', { 'for': 'html.twig' }
Plug 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}
Plug 'elzr/vim-json', {'for' : 'json'}
Plug 'cespare/vim-toml'
Plug 'fatih/vim-nginx' , {'for' : 'nginx'}
Plug 'plasticboy/vim-markdown'
Plug 'tmux-plugins/vim-tmux', {'for': 'tmux'}
Plug 'kassio/neoterm'
Plug 'alvan/vim-closetag'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'mileszs/ack.vim'
Plug 'sebdah/vim-delve', { 'for': 'go' }

Plug 'w0rp/ale'
Plug 'roxma/nvim-completion-manager'
"Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
"Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs', 'for': 'php' }
"autocmd FileType php LanguageClientStart

call plug#end()


"-----Theme-----"
set termguicolors
"colorscheme busierbee
"colorscheme wombat256
colorscheme gruvbox
let g:gruvbox_italic=1
set background=dark
"let g:gruvbox_contrast_dark = 'soft'


"-----Vim-Config-----"
let g:user_emmet_leader_key='<C-a>'
let g:indentLine_enabled = 2
let g:indentLine_color_term = 132
let g:indentLine_faster = 1
autocmd QuickFixCmdPost *grep* cwindow

set nocompatible
filetype off
filetype plugin indent on

set ttyfast

set laststatus=2
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically reread changed files without asking me anything
set autoindent
set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set mouse=c

set noerrorbells             " No beeps
set number                   " Show line numbers
set showcmd                  " Show me what I'm typing
set splitright               " Split vertical windows right to the current windows
set splitbelow               " Split horizontal windows below to the current windows
set autowrite                " Automatically save before :next, :make etc.
set hidden
set fileformats=unix,dos,mac " Prefer Unix over Windows over OS 9 formats
set noshowmatch              " Do not show matching brackets by flickering
set noshowmode               " We show the mode with airline or lightline
set ignorecase               " Search case insensitive...
set smartcase                " ... but not it begins with upper case
set completeopt=menu,menuone
set nocursorcolumn           " speed up syntax highlighting
set nocursorline
set updatetime=300
set pumheight=10             " Completion window max size
set conceallevel=2           " Concealed text is completely hidden

set lazyredraw

set clipboard=unnamed

" ~/.viminfo needs to be writable and readable
set viminfo='200

set et
set sw=4
set ts=4
set smarttab
set copyindent
set smartindent
set smarttab
set foldmethod=indent
set foldlevel=99
set completeopt=longest,menuone,preview
set showmode
let mapleader=','

"-----Key-Mapping-----"
set pastetoggle=<F2>
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-t> :tabnew<CR>
map <S-h> gT
map <S-l> gt
map <C-_> <C-w>_
tnoremap <Leader>e <C-\><C-n>

map <C-P> :FZF <CR>
map <F1> :FixWhitespace <CR>
autocmd! BufWritePre * FixWhitespace


"-----Auto-Commands-----"

"--Auto-source-vimrc--"
augroup autosourcing
    autocmd!
    autocmd BufWritePost ~/.config/nvim/init.vim source %
augroup END

"--Sync-syntax--"
autocmd BufEnter * :syntax sync fromstart

"--Spacing-file-types--"
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript.jsx setlocal ts=2 sts=2 sw=2
autocmd Filetype less setlocal ts=2 sts=2 sw=2
autocmd Filetype stylus setlocal ts=4 sts=4 sw=4
autocmd Filetype scss setlocal ts=4 sts=4 sw=4
autocmd Filetype twig setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=4 sts=4 sw=4
autocmd Filetype blade setlocal ts=4 sts=4 sw=4
autocmd Filetype html.twig setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype scala setlocal ts=4 sts=4 sw=4

augroup filetypedetect
  command! -nargs=* -complete=help Help vertical belowright help <args>
  autocmd FileType help wincmd L

  autocmd BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
  autocmd BufNewFile,BufRead .nginx.conf*,nginx.conf* setf nginx
  autocmd BufNewFile,BufRead *.hcl setf conf
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

  autocmd BufNewFile,BufRead *.ino setlocal noet ts=4 sw=4 sts=4
  autocmd BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
  autocmd BufNewFile,BufRead *.md setlocal noet ts=4 sw=4
  autocmd BufNewFile,BufRead *.html setlocal noet ts=4 sw=4
  autocmd BufNewFile,BufRead *.vim setlocal expandtab shiftwidth=2 tabstop=2
  autocmd BufNewFile,BufRead *.hcl setlocal expandtab shiftwidth=2 tabstop=2
  autocmd BufNewFile,BufRead *.sh setlocal expandtab shiftwidth=2 tabstop=2

  autocmd FileType json setlocal expandtab shiftwidth=2 tabstop=2
  autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
augroup END

"--Command Alias--"
command! Qt tabclose


"-----Plugins-Config-----"

"--Vim-Airline--"
let g:airline#extensions#tabline#enabled = 0 "buffer indicator
let g:airline_powerline_fonts = 1 "powerline font for airline
let g:airline_theme='gruvbox'
let g:airline#extensions#ale#enabled = 1
"let g:airline_theme='wombat'

"--NerdTree--"
map <C-n> : NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()

"--AckVim--"
if executable('ag')
  let g:ackprg = 'ag --vimgrep -s'
endif

"--Deoplete--"
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#sources = {}
"let g:deoplete#sources['php'] = ['file', 'buffer', 'tag', 'member', 'padawan']
"let g:deoplete#sources['html.twig'] = ['file', 'buffer', 'tag', 'member', 'padawan']
"let g:deoplete#sources['javascript'] = ['file', 'buffer', 'tag', 'member', 'ternjs']
"let g:deoplete#sources['javascript.jsx'] = ['file', 'buffer', 'tag', 'member', 'ternjs']
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"--DeopletePadawan--"
"command! StartPadawan call deoplete#sources#padawan#StartServer()
"command! StopPadawan call deoplete#sources#padawan#StopServer()
"command! RestartPadawan call deoplete#sources#padawan#RestartServer()

"--DeopleteTernJS--"
"let g:tern_request_timeout = 1
"let g:tern_show_signature_in_pum = '0'

"--NVim-Completion-Manager--"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"--PHP-CS-Fixer--"
let g:php_cs_fixer_level = "symfony" "which level ?
let g:php_cs_fixer_fixers_list = "-psr0" "Disable PSR-0.
let g:php_cs_fixer_config = "default" "configuration
let g:php_cs_fixer_php_path = "php" "Path to PHP
let g:php_cs_fixer_dry_run = 0 "Call command with dry-run option
let g:php_cs_fixer_verbose = 0 "Return the output of command if 1, else an inline information.

"--Vim-Go--"
let g:go_list_type = "quickfix"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck']
let g:go_auto_type_info = 1
let g:go_addtags_transform = "snakecase"
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"

"let g:go_def_mode = "guru"
"let g:go_echo_command_info = 1
"let g:go_gocode_autobuild = 0
"let g:go_gocode_unimported_packages = 0
"let g:go_autodetect_gopath = 1
"let g:go_info_mode = "guru"
"let g:go_highlight_space_tab_error = 0
"let g:go_highlight_array_whitespace_error = 0
"let g:go_highlight_trailing_whitespace_error = 0
"let g:go_highlight_extra_types = 0
"let g:go_highlight_build_constraints = 1
"let g:go_highlight_types = 0
"let g:go_highlight_format_strings = 0
augroup go
  autocmd!

  autocmd FileType go nmap <silent> <Leader>v <Plug>(go-def-vertical)
  autocmd FileType go nmap <silent> <Leader>s <Plug>(go-def-split)
  autocmd FileType go nmap <silent> <Leader>d <Plug>(go-def-tab)

  autocmd FileType go nmap <silent> <Leader>x <Plug>(go-doc-vertical)

  autocmd FileType go nmap <silent> <Leader>i <Plug>(go-info)
  autocmd FileType go nmap <silent> <Leader>l <Plug>(go-metalinter)

  autocmd FileType go nmap <silent> <leader>b :<C-u>call <SID>build_go_files()<CR>
  autocmd FileType go nmap <silent> <leader>t  <Plug>(go-test)
  autocmd FileType go nmap <silent> <leader>r  <Plug>(go-run)
  autocmd FileType go nmap <silent> <leader>e  <Plug>(go-install)

  autocmd FileType go nmap <silent> <Leader>c <Plug>(go-coverage-toggle)

  " I like these more!
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END

"--VimJSX--"
"let g:jsx_ext_required = 0

"--NeoMake--"
"let g:neomake_warning_sign = {
"\ 'text': 'W',
"\ 'texthl': 'WarningMsg',
"\ }
"let g:neomake_error_sign = {
"\ 'text': 'E',
"\ 'texthl': 'ErrorMsg',
"\ }
"let g:neomake_javascript_enabled_makers = ['eslint']
"let g:neomake_jsx_enabled_makers = ['eslint']
"let g:neomake_php_enabled_makers = ['php']
"let g:neomake_verbose = 1
"autocmd! BufWritePost * Neomake

"--Ale--"
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_save = 1

"--Vim-Flow--"
let g:flow#autoclose = '1'

"--vim-php-namespace--"
"set tags+=.tags,.tags.vendors
"function! IPhpInsertUse()
    "call PhpInsertUse()
    "call feedkeys('a',  'n')
"endfunction
"autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
"autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

"--vim-autotag--"
"let g:autotagTagsFile=".tags"

"--vim-closetag--"
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.twig,*.js"

"--vim-neoterm--"
tnoremap <Esc> <C-\><C-n>
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>

"--NeoSnippets--"
" For conceal markers.
"if has('conceal')
  "set conceallevel=2 concealcursor=niv
"endif
"imap <C-j>     <Plug>(neosnippet_expand_or_jump)
"smap <C-j>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-j>     <Plug>(neosnippet_expand_target)
"imap <expr><TAB>
"\ pumvisible() ? "\<C-n>" :
"\ neosnippet#expandable_or_jumpable() ?
"\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" ==================== markdown ====================
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['go=go', 'viml=vim', 'bash=sh']
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_no_extensions_in_markdown = 1


" ==================== vim-json ====================
let g:vim_json_syntax_conceal = 0
