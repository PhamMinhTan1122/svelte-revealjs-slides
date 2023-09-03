let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd D:/ProjectHtml/svelte-reveal
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +61 D:/ProjectHtml/svelte-reveal/src/slides/GettingStarted.svelte
badd +3 D:/ProjectHtml/svelte-reveal/src/Presentation.svelte
badd +5 D:/ProjectHtml/svelte-reveal/src/slides/Title.svelte
badd +53 D:/ProjectHtml/svelte-reveal/src/component/timer.svelte
badd +1 D:/ProjectHtml/svelte-reveal/src/component/slide.svelte
badd +11 src/component/code.svelte
badd +1 D:/ProjectHtml/svelte-reveal/src/component/note.svelte
argglobal
%argdel
edit D:/ProjectHtml/svelte-reveal/src/slides/GettingStarted.svelte
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 22 + 23) / 47)
exe 'vert 1resize ' . ((&columns * 80 + 80) / 160)
exe '2resize ' . ((&lines * 21 + 23) / 47)
exe 'vert 2resize ' . ((&columns * 80 + 80) / 160)
exe 'vert 3resize ' . ((&columns * 79 + 80) / 160)
argglobal
balt D:/ProjectHtml/svelte-reveal/src/Presentation.svelte
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 69 - ((14 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 69
normal! 010|
wincmd w
argglobal
if bufexists(fnamemodify("D:/ProjectHtml/svelte-reveal/src/Presentation.svelte", ":p")) | buffer D:/ProjectHtml/svelte-reveal/src/Presentation.svelte | else | edit D:/ProjectHtml/svelte-reveal/src/Presentation.svelte | endif
if &buftype ==# 'terminal'
  silent file D:/ProjectHtml/svelte-reveal/src/Presentation.svelte
endif
balt D:/ProjectHtml/svelte-reveal/src/slides/GettingStarted.svelte
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 3 - ((2 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("D:/ProjectHtml/svelte-reveal/src/component/timer.svelte", ":p")) | buffer D:/ProjectHtml/svelte-reveal/src/component/timer.svelte | else | edit D:/ProjectHtml/svelte-reveal/src/component/timer.svelte | endif
if &buftype ==# 'terminal'
  silent file D:/ProjectHtml/svelte-reveal/src/component/timer.svelte
endif
balt D:/ProjectHtml/svelte-reveal/src/slides/Title.svelte
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 53 - ((35 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 53
normal! 012|
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 22 + 23) / 47)
exe 'vert 1resize ' . ((&columns * 80 + 80) / 160)
exe '2resize ' . ((&lines * 21 + 23) / 47)
exe 'vert 2resize ' . ((&columns * 80 + 80) / 160)
exe 'vert 3resize ' . ((&columns * 79 + 80) / 160)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
