if has("mac")
  set gfn=Source\ Code\ Pro:h18
  set fuopt=maxhorz,maxvert
end

set guioptions-=T  "remove toolbar
set guioptions-=m  "remove menu

set lines=47
set columns=161

"DistractionFreeWriting stuffs...
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} call DistractionFreeWriting()
function! DistractionFreeWriting()
  colorscheme iawriter
  set number
  set background=light
  set lines=40 columns=100           " size of the editable area
  set fuoptions=background:#00f5f6f6 " macvim specific setting for editor's background color 
  set guioptions-=r                  " remove right scrollbar
  set laststatus=0                   " don't show status line
  set noruler                        " don't show ruler
  set linebreak                      " break the lines on words
  set nonu
endfunction

set fullscreen                     " go to fullscreen editing mode
