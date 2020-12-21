function! neoformat#formatters#haskell#enabled() abort
    return ['brittany']
endfunction

function! neoformat#formatters#haskell#brittany() abort
    return {
        \ 'exe': 'brittany',
        \ 'stdin': 1
        \ }
endfunction

