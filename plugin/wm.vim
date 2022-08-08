if exists('g:loaded_wm')
    finish
endif
let g:loaded_wm = 1

function! WMTabline()
    let s = ''
    for i in range(tabpagenr('$'))
        let tab = i + 1
        let s .= '%' . tab . 'T'
        let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
        let s .= ' ' . tab . ' '
    endfor
    let s .= '%#TabLineFill#%=%999i%#TabLine#'
    let s .= strftime("%Y-%m-%d  %I:%M %p")
    return s
endfunction

function! WMTerminalFocus()
    if &buftype ==# 'terminal'
        execute "normal i"
    endif
endfunction

set tabline=%!WMTabline()

nnoremap <C-a> <Nop>

nnoremap <silent><C-a>1 1gt:call WMTerminalFocus()<CR>
nnoremap <silent><C-a>2 2gt:call WMTerminalFocus()<CR>
nnoremap <silent><C-a>3 3gt:call WMTerminalFocus()<CR>
nnoremap <silent><C-a>4 4gt:call WMTerminalFocus()<CR>
nnoremap <silent><C-a>5 5gt:call WMTerminalFocus()<CR>
nnoremap <silent><C-a>6 6gt:call WMTerminalFocus()<CR>
nnoremap <silent><C-a>7 7gt:call WMTerminalFocus()<CR>
nnoremap <silent><C-a>8 8gt:call WMTerminalFocus()<CR>
nnoremap <silent><C-a>9 9gt:call WMTerminalFocus()<CR>
nnoremap <silent><C-a>0 10gt:call WMTerminalFocus()<CR>

nnoremap <silent><C-a>c :tabnew +term<CR>i
nnoremap <silent><C-a>q :tabclose<CR>

nnoremap <silent><C-w>h <C-w>h:call WMTerminalFocus()<CR>
nnoremap <silent><C-w>j <C-w>j:call WMTerminalFocus()<CR>
nnoremap <silent><C-w>k <C-w>k:call WMTerminalFocus()<CR>
nnoremap <silent><C-w>l <C-w>l:call WMTerminalFocus()<CR>

nnoremap <silent><C-w><Left> <C-w><Left>:call WMTerminalFocus()<CR>
nnoremap <silent><C-w><Down> <C-w><Down>:call WMTerminalFocus()<CR>
nnoremap <silent><C-w><Up> <C-w><Up>:call WMTerminalFocus()<CR>
nnoremap <silent><C-w><Right> <C-w><Right>:call WMTerminalFocus()<CR>

tnoremap <C-a> <Nop>

tnoremap <silent><C-a>1 <C-\><C-n>1gt:call WMTerminalFocus()<CR>
tnoremap <silent><C-a>2 <C-\><C-n>2gt:call WMTerminalFocus()<CR>
tnoremap <silent><C-a>3 <C-\><C-n>3gt:call WMTerminalFocus()<CR>
tnoremap <silent><C-a>4 <C-\><C-n>4gt:call WMTerminalFocus()<CR>
tnoremap <silent><C-a>5 <C-\><C-n>5gt:call WMTerminalFocus()<CR>
tnoremap <silent><C-a>6 <C-\><C-n>6gt:call WMTerminalFocus()<CR>
tnoremap <silent><C-a>7 <C-\><C-n>7gt:call WMTerminalFocus()<CR>
tnoremap <silent><C-a>8 <C-\><C-n>8gt:call WMTerminalFocus()<CR>
tnoremap <silent><C-a>9 <C-\><C-n>9gt:call WMTerminalFocus()<CR>
tnoremap <silent><C-a>0 <C-\><C-n>10gt:call WMTerminalFocus()<CR>

tnoremap <silent><C-a>c <C-\><C-n>:tabnew +term<CR>i
tnoremap <silent><C-a>q <C-\><C-n>:tabclose<CR>

tnoremap <silent><C-w>h <C-\><C-n><C-w>h:call WMTerminalFocus()<CR>
tnoremap <silent><C-w>j <C-\><C-n><C-w>j:call WMTerminalFocus()<CR>
tnoremap <silent><C-w>k <C-\><C-n><C-w>k:call WMTerminalFocus()<CR>
tnoremap <silent><C-w>l <C-\><C-n><C-w>l:call WMTerminalFocus()<CR>

tnoremap <silent><C-w><Left> <C-\><C-n><C-w><Left>:call WMTerminalFocus()<CR>
tnoremap <silent><C-w><Down> <C-\><C-n><C-w><Down>:call WMTerminalFocus()<CR>
tnoremap <silent><C-w><Up> <C-\><C-n><C-w><Up>:call WMTerminalFocus()<CR>
tnoremap <silent><C-w><Right> <C-\><C-n><C-w><Right>:call WMTerminalFocus()<CR>
