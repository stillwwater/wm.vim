" vim:ts=4:sw=4:ai:foldmethod=marker:foldlevel=1:
" ----------------------------------------------------------------------------
" Name:     wm.vim
" Version:  1.4
" Date:     2022-08-07
" Modified: 2023-04-16
" Author:   stillwwater@gmail.com
" ----------------------------------------------------------------------------

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
        let s .= (tab == tabpagenr() ? (' ' . tab . '* ') : ' ' . tab . '  ')
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

function! WMSwitchTab(i)
    let n = a:i - tabpagenr('$')
    if n > 0
        for i in range(n)
            execute 'tabnew +term'
        endfor
    endif
    execute 'normal' . a:i . 'gt'
    call WMTerminalFocus()
endfunction

set tabline=%!WMTabline()

nnoremap <C-a> <Nop>

nnoremap <silent><C-a>1 :call WMSwitchTab(1)<CR>
nnoremap <silent><C-a>2 :call WMSwitchTab(2)<CR>
nnoremap <silent><C-a>3 :call WMSwitchTab(3)<CR>
nnoremap <silent><C-a>4 :call WMSwitchTab(4)<CR>
nnoremap <silent><C-a>5 :call WMSwitchTab(5)<CR>
nnoremap <silent><C-a>6 :call WMSwitchTab(6)<CR>
nnoremap <silent><C-a>7 :call WMSwitchTab(7)<CR>
nnoremap <silent><C-a>8 :call WMSwitchTab(8)<CR>
nnoremap <silent><C-a>9 :call WMSwitchTab(9)<CR>
nnoremap <silent><C-a>0 :call WMSwitchTab(10)<CR>

nnoremap <silent><A-1> :call WMSwitchTab(1)<CR>
nnoremap <silent><A-2> :call WMSwitchTab(2)<CR>
nnoremap <silent><A-3> :call WMSwitchTab(3)<CR>
nnoremap <silent><A-4> :call WMSwitchTab(4)<CR>
nnoremap <silent><A-5> :call WMSwitchTab(5)<CR>
nnoremap <silent><A-6> :call WMSwitchTab(6)<CR>
nnoremap <silent><A-7> :call WMSwitchTab(7)<CR>
nnoremap <silent><A-8> :call WMSwitchTab(8)<CR>
nnoremap <silent><A-9> :call WMSwitchTab(9)<CR>
nnoremap <silent><A-0> :call WMSwitchTab(10)<CR>

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

tnoremap <silent><C-a>1 <C-\><C-n>:call WMSwitchTab(1)<CR>
tnoremap <silent><C-a>2 <C-\><C-n>:call WMSwitchTab(2)<CR>
tnoremap <silent><C-a>3 <C-\><C-n>:call WMSwitchTab(3)<CR>
tnoremap <silent><C-a>4 <C-\><C-n>:call WMSwitchTab(4)<CR>
tnoremap <silent><C-a>5 <C-\><C-n>:call WMSwitchTab(5)<CR>
tnoremap <silent><C-a>6 <C-\><C-n>:call WMSwitchTab(6)<CR>
tnoremap <silent><C-a>7 <C-\><C-n>:call WMSwitchTab(7)<CR>
tnoremap <silent><C-a>8 <C-\><C-n>:call WMSwitchTab(8)<CR>
tnoremap <silent><C-a>9 <C-\><C-n>:call WMSwitchTab(9)<CR>
tnoremap <silent><C-a>0 <C-\><C-n>:call WMSwitchTab(10)<CR>

tnoremap <silent><A-1> <C-\><C-n>:call WMSwitchTab(1)<CR>
tnoremap <silent><A-2> <C-\><C-n>:call WMSwitchTab(2)<CR>
tnoremap <silent><A-3> <C-\><C-n>:call WMSwitchTab(3)<CR>
tnoremap <silent><A-4> <C-\><C-n>:call WMSwitchTab(4)<CR>
tnoremap <silent><A-5> <C-\><C-n>:call WMSwitchTab(5)<CR>
tnoremap <silent><A-6> <C-\><C-n>:call WMSwitchTab(6)<CR>
tnoremap <silent><A-7> <C-\><C-n>:call WMSwitchTab(7)<CR>
tnoremap <silent><A-8> <C-\><C-n>:call WMSwitchTab(8)<CR>
tnoremap <silent><A-9> <C-\><C-n>:call WMSwitchTab(9)<CR>
tnoremap <silent><A-0> <C-\><C-n>:call WMSwitchTab(10)<CR>

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
