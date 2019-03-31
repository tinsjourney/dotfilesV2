" Turn on color syntax highlighting
syntax enable
set background=dark


" yaml color syntax highlighting
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

" indent yaml file
filetype plugin indent on
autocmd FileType yaml setl indentkeys-=<:>
autocmd FileType yaml setlocal ai ts=2 sts=2 sw=2 expandtab

" indent json file on save
:autocmd BufWritePre *.json execute '%!python -m json.tool' | w
