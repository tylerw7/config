" ===============
" = vim tweaks =
" ===============
syntax on
filetype indent plugin on
set relativenumber
set hidden
let mapleader = " "

" Additional file types (:help new-filetypes)
au BufRead,BufNewFile *.ml    set filetype=ocaml
au BufRead,BufNewFile *.ocaml set filetype=ocaml

" ===========
" = Plugins =
" ===========
call plug#begin('~/.local/share/nvim/plugged')

" Language Server Protocol
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Autocompletion
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

call plug#end()

" ========================
" = Plugin Configuration =
" ========================

" LanguageClient

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls'],
    \ }
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gt :call LanguageClient#textDocument_typeDefinition()<CR>
nnoremap <silent> gI :call LanguageClient#textDocument_implementation()<CR>
nnoremap <silent> <leader>rn :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> <leader>k :call LanguageClient#textDocument_hover()<CR>

" ncm2 (autocompletion)

autocmd BufEnter *.rs call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
" set completefunc=LanguageClient#complete

" =============
" = Functions =
" =============

" Text Formatting

function Fmt()
	if (&filetype) == "rust"
		silent !rustfmt +nightly %
	endif
	" Reload current buffer
	e
endfunction

nnoremap <silent> ff :call Fmt()<CR>

