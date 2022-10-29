let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +535 term://~/fun/dd//31420:/bin/zsh
badd +23 Users/aryan.mann/fun/funky-uni/funky-town/src-tauri/src/main.rs
badd +4 term://~/fun/funky-uni/funky-town//37723:/bin/zsh
badd +12 Users/aryan.mann/fun/funky-uni/funky-town/src-tauri/src/app-state.rs
badd +22 Users/aryan.mann/.config/nvim/lua/plug.lua
badd +124 Users/aryan.mann/.config/nvim/init.lua
badd +21 Users/aryan.mann/.config/nvim/lua/opts.lua
argglobal
%argdel
edit Users/aryan.mann/.config/nvim/lua/plug.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe 'vert 1resize ' . ((&columns * 35 + 142) / 284)
exe '2resize ' . ((&lines * 41 + 39) / 78)
exe 'vert 2resize ' . ((&columns * 123 + 142) / 284)
exe '3resize ' . ((&lines * 41 + 39) / 78)
exe 'vert 3resize ' . ((&columns * 124 + 142) / 284)
exe '4resize ' . ((&lines * 28 + 39) / 78)
exe 'vert 4resize ' . ((&columns * 123 + 142) / 284)
exe '5resize ' . ((&lines * 28 + 39) / 78)
exe 'vert 5resize ' . ((&columns * 124 + 142) / 284)
argglobal
enew
file neo-tree\ filesystem\ \[1]
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
balt Users/aryan.mann/fun/funky-uni/funky-town/src-tauri/src/app-state.rs
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
let s:l = 22 - ((21 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 22
normal! 028|
wincmd w
argglobal
if bufexists(fnamemodify("Users/aryan.mann/.config/nvim/init.lua", ":p")) | buffer Users/aryan.mann/.config/nvim/init.lua | else | edit Users/aryan.mann/.config/nvim/init.lua | endif
if &buftype ==# 'terminal'
  silent file Users/aryan.mann/.config/nvim/init.lua
endif
balt Users/aryan.mann/.config/nvim/lua/opts.lua
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
let s:l = 32 - ((31 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 32
normal! 0
lcd ~/.config
wincmd w
argglobal
if bufexists(fnamemodify("~/fun/funky-uni/funky-town/src-tauri/src/main.rs", ":p")) | buffer ~/fun/funky-uni/funky-town/src-tauri/src/main.rs | else | edit ~/fun/funky-uni/funky-town/src-tauri/src/main.rs | endif
if &buftype ==# 'terminal'
  silent file ~/fun/funky-uni/funky-town/src-tauri/src/main.rs
endif
balt term://~/fun/dd//31420:/bin/zsh
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
let s:l = 23 - ((22 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~/fun/funky-uni/funky-town//37723:/bin/zsh", ":p")) | buffer term://~/fun/funky-uni/funky-town//37723:/bin/zsh | else | edit term://~/fun/funky-uni/funky-town//37723:/bin/zsh | endif
if &buftype ==# 'terminal'
  silent file term://~/fun/funky-uni/funky-town//37723:/bin/zsh
endif
balt ~/fun/funky-uni/funky-town/src-tauri/src/app-state.rs
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 8 - ((7 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 042|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 35 + 142) / 284)
exe '2resize ' . ((&lines * 41 + 39) / 78)
exe 'vert 2resize ' . ((&columns * 123 + 142) / 284)
exe '3resize ' . ((&lines * 41 + 39) / 78)
exe 'vert 3resize ' . ((&columns * 124 + 142) / 284)
exe '4resize ' . ((&lines * 28 + 39) / 78)
exe 'vert 4resize ' . ((&columns * 123 + 142) / 284)
exe '5resize ' . ((&lines * 28 + 39) / 78)
exe 'vert 5resize ' . ((&columns * 124 + 142) / 284)
if exists(':tcd') == 2 | tcd ~/fun/funky-uni/funky-town | endif
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
