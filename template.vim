function! GTemplateList(A, L, P)
    return filter(map(split(glob("~/template/template/*"), "\n"), 'fnamemodify(v:val, ":t")'), 'v:val =~# "^' . a:A . '"')
endfunction

command! -nargs=1 -complete=customlist,GTemplateList GTemplate r ~/template/template/<args>
