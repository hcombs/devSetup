set number
set shellcmdflag=-ic
set ts=4 
set sw=4
if v:progname =~? "evim"
  finish
endif

source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

augroup vimrcEx
  au!

  autocmd FileType text setlocal textwidth=78
augroup END

if has('syntax') && has('eval')
  packadd! matchit
endif

command! -nargs=1 Gof put='func <args> (){ }'
command! -nargs=1 Dqs put='document.querySelector(\"<args>\")'
command! -nargs=1 Jsf put='const <args> = ()=>{ }'
