let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <S-Tab> 
imap <S-Del> <Plug>Jumper
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
map! <D-v> *
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
vmap <silent> ,cy "0ygv,cc
nmap <silent> ,cy "0Y,cc
map ,da :r !date +\%F
vmap [% [%m'gv``
nmap \sv <Plug>SVNVimDiff
nmap \su <Plug>SVNUpdate
nmap \sr <Plug>SVNResolved
nmap \sp <Plug>SVNPropedit
nmap \si <Plug>SVNInfo
nmap \ss <Plug>SVNStatus
nmap \sw <Plug>SVNReview
nmap \sq <Plug>SVNRevert
nmap \sl <Plug>SVNLog
nmap \sg <Plug>SVNGotoOriginal
nmap \sd <Plug>SVNDiff
nmap \sc <Plug>SVNCommit
nmap \sG <Plug>SVNClearAndGotoOriginal
nmap \sn <Plug>SVNAnnotate
nmap \sa <Plug>SVNAdd
nmap <silent> \ups :call Perl_Handle()
nmap <silent> \lps :call Perl_Handle()
nmap \so <Plug>DBOrientationToggle
nmap \sh <Plug>DBHistory
nmap \slv <Plug>DBListView
nmap \slp <Plug>DBListProcedure
nmap \slt <Plug>DBListTable
vmap <silent> \slc :exec 'DBListColumn '.DB_getVisualBlock()
nmap \slc <Plug>DBListColumn
nmap \sbp <Plug>DBPromptForBufferParameters
nmap \sdpa <Plug>DBDescribeProcedureAskName
vmap <silent> \sdp :exec 'DBDescribeProcedure '.DB_getVisualBlock()
nmap \sdp <Plug>DBDescribeProcedure
nmap \sdta <Plug>DBDescribeTableAskName
vmap <silent> \sdt :exec 'DBDescribeTable '.DB_getVisualBlock()
nmap \sdt <Plug>DBDescribeTable
vmap <silent> \sT :exec 'DBSelectFromTableTopX '.DB_getVisualBlock()
nmap \sT <Plug>DBSelectFromTableTopX
nmap \sta <Plug>DBSelectFromTableAskName
nmap \stw <Plug>DBSelectFromTableWithWhere
vmap <silent> \st :exec 'DBSelectFromTable '.DB_getVisualBlock()
nmap \st <Plug>DBSelectFromTable
nmap <silent> \sel :.,.DBExecRangeSQL
nmap <silent> \sea :1,$DBExecRangeSQL
nmap \sE <Plug>DBExecSQLUnderCursorTopX
nmap \se <Plug>DBExecSQLUnderCursor
vmap \sE <Plug>DBExecVisualSQLTopX
vmap \se <Plug>DBExecVisualSQL
map \rwp <Plug>RestoreWinPosn
map \swp <Plug>SaveWinPosn
vmap <silent> \Htd :<BS><BS><BS>ma'>\Htd
vmap <silent> \tt :<BS><BS><BS>ma'>\tt
vmap <silent> \tp@ :<BS><BS><BS>ma'>\tp@
vmap <silent> \tsq :<BS><BS><BS>ma'>\tsq
vmap <silent> \tsp :<BS><BS><BS>ma'>\tsp
vmap <silent> \tml :<BS><BS><BS>ma'>\tml
vmap <silent> \tab :<BS><BS><BS>ma'>\tab
vmap <silent> \t@ :<BS><BS><BS>ma'>\t@
vmap <silent> \t? :<BS><BS><BS>ma'>\t?
vmap <silent> \t= :<BS><BS><BS>ma'>\t=
vmap <silent> \t< :<BS><BS><BS>ma'>\t<
vmap <silent> \t; :<BS><BS><BS>ma'>\t;
vmap <silent> \t: :<BS><BS><BS>ma'>\t:
vmap <silent> \ts, :<BS><BS><BS>ma'>\ts,
vmap <silent> \t, :<BS><BS><BS>ma'>\t,
vmap <silent> \t| :<BS><BS><BS>ma'>\t|
vmap <silent> \anum :B s/\(\d\)\s\+\(-\=[.,]\=\d\)/\1@\2/ge:AlignCtrl mp0P0gv:Align [.,@]:'<,'>s/\([-0-9.,]*\)\(\s\+\)\([.,]\)/\2\1\3/ge:'<,'>s/@/ /ge
vmap <silent> \afnc :<BS><BS><BS>ma'>\afnc
vmap <silent> \adef :<BS><BS><BS>ma'>\adef
vmap <silent> \adec :<BS><BS><BS>ma'>\adec
vmap <silent> \ascom :<BS><BS><BS>ma'>\ascom
vmap <silent> \aocom :<BS><BS><BS>ma'>\aocom
vmap <silent> \acom :<BS><BS><BS>ma'>\acom
vmap <silent> \abox :<BS><BS><BS>ma'>\abox
vmap <silent> \a= :<BS><BS><BS>ma'>\a=
vmap <silent> \a< :<BS><BS><BS>ma'>\a<
vmap <silent> \a, :<BS><BS><BS>ma'>\a,
vmap <silent> \a? :<BS><BS><BS>ma'>\a?
vmap <silent> \Tsp :<BS><BS><BS>ma'>\Tsp
vmap <silent> \T@ :<BS><BS><BS>ma'>\T@
vmap <silent> \T= :<BS><BS><BS>ma'>\T=
vmap <silent> \T< :<BS><BS><BS>ma'>\T<
vmap <silent> \T: :<BS><BS><BS>ma'>\T:
vmap <silent> \Ts, :<BS><BS><BS>ma'>\Ts,
vmap <silent> \T, :<BS><BS><BS>ma'>\T,
vmap <silent> \T| :<BS><BS><BS>ma'>\T|
map <silent> \tdW@ :AlignCtrl v ^\s*/[/*]:AlignCtrl mWp1P1=l @:'a,.Align
map <silent> \tW@ :AlignCtrl mWp1P1=l @:'a,.Align
nmap <silent> \t@ :AlignCtrl mIp1P1=l @:'a,.Align
omap <silent> \t@ :AlignCtrl mIp1P1=l @:'a,.Align
nmap <silent> \aocom :AlignPush:AlignCtrl g /[*/]\acom:AlignPop
omap <silent> \aocom :AlignPush:AlignCtrl g /[*/]\acom:AlignPop
map \ra <Plug>RailsAlternate
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
map gf 
map td :tabclose 
map tn :tabnew 
map tl :tabnext 
map th :tabprev 
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>SVNCommitDiff :SVNCommitDiff
nnoremap <silent> <Plug>SVNVimDiff :SVNVimDiff
nnoremap <silent> <Plug>SVNUpdate :SVNUpdate
nnoremap <silent> <Plug>SVNResolved :SVNResolved
nnoremap <silent> <Plug>SVNPropedit :SVNPropedit
nnoremap <silent> <Plug>SVNInfo :SVNInfo
nnoremap <silent> <Plug>SVNStatus :SVNStatus
nnoremap <silent> <Plug>SVNReview :SVNReview
nnoremap <silent> <Plug>SVNRevert :SVNRevert
nnoremap <silent> <Plug>SVNLog :SVNLog
nnoremap <silent> <Plug>SVNClearAndGotoOriginal :SVNGotoOriginal!
nnoremap <silent> <Plug>SVNGotoOriginal :SVNGotoOriginal
nnoremap <silent> <Plug>SVNDiff :SVNDiff
nnoremap <silent> <Plug>SVNCommit :SVNCommit
nnoremap <silent> <Plug>SVNAnnotate :SVNAnnotate
nnoremap <silent> <Plug>SVNAdd :SVNAdd
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
nmap <SNR>16_WE <Plug>AlignMapsWrapperEnd
nmap <SNR>16_WS <Plug>AlignMapsWrapperStart
map <F4> :emenu 
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
imap 	 
imap <NL> <Plug>IMAP_JumpForward
imap  =CtrlXPP()
cmap ;\ \(\)<Left><Left>
map! ^O {^M}^[O^T
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set cpoptions=ABceFsv$
set directory=~/.tmp/vim
set display=lastline
set errorformat=%D(in\\\ %f),%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Failure:,%C%.%#\\\ [%f:%l]:,%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Error:,%CActionView::TemplateError:\\\ compile\\\ error,%C%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%C%.%#/vendor/rails/%.%#,%C%.%#(eval)%.%#,%Z%f:%l:\\\ syntax\\\ error\\\\,\\\ %m,%Z%f:%l:\\\ %m,%Z\\\ %#,%Z%p^,%C\\\ %\\\\+On\\\ line\\\ #%l\\\ of\\\ %f,%C\\\ \\\ \\\ \\\ %f:%l:%.%#,%Ctest_%.%#:,%CActionView::TemplateError:\\\ %f:%l:in\\\ `%.%#':\\\ %m,%CActionView::TemplateError:\\\ You\\\ have\\\ a\\\ %m!,%CNoMethodError:\\\ You\\\ have\\\ a\\\ %m!,%CActionView::TemplateError:\\\ %m,%CThe\\\ error\\\ occured\\\ while\\\ %m,%C%m,ActionView::TemplateError\\\ (%m)\\\ on\\\ line\\\ #%l\\\ of\\\ %f:,%AActionView::TemplateError\\\ (compile\\\ error,%.%#/rake_test_loader.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ %m,%-G%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%-G%.%#/vendor/rails/%.%#,%f:%l:\\\ %m,%-G%.%#
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=tcqln
set helplang=en
set history=1000
set ruler
set scrolloff=4
set shiftwidth=2
set showmatch
set smarttab
set statusline=%<%f\ %h%m%r%{RailsStatusline()}%=%-16(\ %l,%c-%v\ %)%P
set tabstop=4
set wildcharm=26
set wildmenu
set window=40
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Programming/Ruby/waltz
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +14 TODO
badd +0 doc/rendering_sample.rb
badd +0 samples/site_configs/sitegen_v3_config.rb
badd +10 samples/site_configs/waltz_sample_config.rb
badd +7 samples/test_project/cruise_config.rb
badd +9 init.rb
badd +488 ~/Programming/Ruby/cruisecontrolrb-1.3.0/app/models/project.rb
badd +28 lib/extensions/project.rb
badd +0 ~/w/app/changes.diff
badd +7 lib/extensions/build.rb
badd +0 lib/extensions/log_parser.rb
badd +5 lib/extensions/polling_scheduler.rb
badd +2 lib/extensions/projects_helper.rb
badd +0 ~/.cruise/projects/sitegen3_cpotest/cruise_config.rb
badd +20 ~/w/app/models/project.rb
badd +17 lib/builder_plugins/waltz/lib/project_mixin.rb
badd +33 ~/Programming/Ruby/cruisecontrolrb-1.3.0/config/boot.rb
badd +39 lib/extensions/plugin_loader.rb
badd +32 ~/Programming/Ruby/cruisecontrolrb-1.3.0/app/models/projects.rb
badd +1 lib/builder_plugins/waltz/init.rb
badd +0 ~/Programming/Ruby/cruisecontrolrb-1.3.0/lib/builder_plugins/build_reaper.rb
badd +0 ./script/../config/../vendor/rails/railties/lib/commands/server.rb
args TODO
edit TODO
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 15 - ((14 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 075l
tabedit init.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nmap <buffer> <silent>  :exec "call RCT_find_tag_or_ri('" . expand("<cword>") . "')"
imap <buffer>  =RubyEndToken()
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=<SNR>32_RCT_completion
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,/usr/local/lib/ruby/gems/1.8,/usr/local/lib/ruby/gems/1.8/gems,/usr/local/lib/ruby/gems/1.8/gems/mysql-2.7,/usr/local/lib/ruby/site_ruby/1.8,/usr/local/lib/ruby/site_ruby/1.8/i686-darwin8.10.1,/usr/local/lib/ruby/site_ruby,/usr/local/lib/ruby/1.8,/usr/local/lib/ruby/1.8/i686-darwin8.10.1,,/usr/local/lib/ruby/gems/1.8/gems/ActiveRecord-JDBC-0.4/lib,/usr/local/lib/ruby/gems/1.8/gems/Antwrap-0.6.0/lib,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.0.2/lib,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.0.2/test,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.1.1/lib,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.1.1/test,/usr/local/lib/ruby/gems/1.8/gems/RedCloth-3.0.4/lib,/usr/local/lib/ruby/gems/1.8/gems/RubyInline-3.6.2/.,/usr/local/lib/ruby/gems/1.8/gems/RubyInline-3.6.3/lib,/usr/local/lib/ruby/gems/1.8/gems/Selenium-1.0.1/lib,/usr/local/lib/ruby/gems/1.8/gems/SyslogLogger-1.4.0/lib,/usr/local/lib/ruby/gems/1.8/gems/ZenTest-3.4.3/lib,/usr/local/lib/ruby/gems/1.8/gems/ZenTest-3.6.1/lib,/usr/local/lib/ruby/gems/1
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 2 - ((1 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 019l
tabedit lib/extensions/plugin_loader.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nmap <buffer> <silent>  :exec "call RCT_find_tag_or_ri('" . expand("<cword>") . "')"
imap <buffer>  =RubyEndToken()
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=<SNR>32_RCT_completion
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,/usr/local/lib/ruby/gems/1.8,/usr/local/lib/ruby/gems/1.8/gems,/usr/local/lib/ruby/gems/1.8/gems/mysql-2.7,/usr/local/lib/ruby/site_ruby/1.8,/usr/local/lib/ruby/site_ruby/1.8/i686-darwin8.10.1,/usr/local/lib/ruby/site_ruby,/usr/local/lib/ruby/1.8,/usr/local/lib/ruby/1.8/i686-darwin8.10.1,,/usr/local/lib/ruby/gems/1.8/gems/ActiveRecord-JDBC-0.4/lib,/usr/local/lib/ruby/gems/1.8/gems/Antwrap-0.6.0/lib,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.0.2/lib,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.0.2/test,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.1.1/lib,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.1.1/test,/usr/local/lib/ruby/gems/1.8/gems/RedCloth-3.0.4/lib,/usr/local/lib/ruby/gems/1.8/gems/RubyInline-3.6.2/.,/usr/local/lib/ruby/gems/1.8/gems/RubyInline-3.6.3/lib,/usr/local/lib/ruby/gems/1.8/gems/Selenium-1.0.1/lib,/usr/local/lib/ruby/gems/1.8/gems/SyslogLogger-1.4.0/lib,/usr/local/lib/ruby/gems/1.8/gems/ZenTest-3.4.3/lib,/usr/local/lib/ruby/gems/1.8/gems/ZenTest-3.6.1/lib,/usr/local/lib/ruby/gems/1
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 20 - ((19 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 08l
tabedit lib/builder_plugins/waltz/init.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nmap <buffer> <silent>  :exec "call RCT_find_tag_or_ri('" . expand("<cword>") . "')"
imap <buffer>  =RubyEndToken()
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=<SNR>32_RCT_completion
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,/usr/local/lib/ruby/gems/1.8,/usr/local/lib/ruby/gems/1.8/gems,/usr/local/lib/ruby/gems/1.8/gems/mysql-2.7,/usr/local/lib/ruby/site_ruby/1.8,/usr/local/lib/ruby/site_ruby/1.8/i686-darwin8.10.1,/usr/local/lib/ruby/site_ruby,/usr/local/lib/ruby/1.8,/usr/local/lib/ruby/1.8/i686-darwin8.10.1,,/usr/local/lib/ruby/gems/1.8/gems/ActiveRecord-JDBC-0.4/lib,/usr/local/lib/ruby/gems/1.8/gems/Antwrap-0.6.0/lib,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.0.2/lib,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.0.2/test,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.1.1/lib,/usr/local/lib/ruby/gems/1.8/gems/ParseTree-2.1.1/test,/usr/local/lib/ruby/gems/1.8/gems/RedCloth-3.0.4/lib,/usr/local/lib/ruby/gems/1.8/gems/RubyInline-3.6.2/.,/usr/local/lib/ruby/gems/1.8/gems/RubyInline-3.6.3/lib,/usr/local/lib/ruby/gems/1.8/gems/Selenium-1.0.1/lib,/usr/local/lib/ruby/gems/1.8/gems/SyslogLogger-1.4.0/lib,/usr/local/lib/ruby/gems/1.8/gems/ZenTest-3.4.3/lib,/usr/local/lib/ruby/gems/1.8/gems/ZenTest-3.6.1/lib,/usr/local/lib/ruby/gems/1
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 4 - ((3 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
tabedit ~/Programming/Ruby/cruisecontrolrb-1.3.0/app/models/project.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> <silent>  :exec "call RCT_find_tag_or_ri('" . expand("<cword>") . "')"
map <buffer> \rm :Rake
map <buffer> \rr :R
map <buffer> \ra :A
map <buffer> \rf <Plug>RailsFind
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
map <buffer> <silent> <Plug>RailsMagicM :echoerr "Obsolete: Use <Plug>RailsRelated instead"
map <buffer> <silent> <Plug>RailsTabFind :RTfind
map <buffer> <silent> <Plug>RailsVSplitFind :RVfind
map <buffer> <silent> <Plug>RailsSplitFind :RSfind
map <buffer> <silent> <Plug>RailsFind :REfind
map <buffer> <silent> <Plug>RailsRelated :R
map <buffer> <silent> <Plug>RailsAlternate :A
imap <buffer>  =RubyEndToken()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=<SNR>32_RCT_completion
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=rake
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Programming/Ruby/cruisecontrolrb-1.3.0,~/Programming/Ruby/cruisecontrolrb-1.3.0/app/controllers,~/Programming/Ruby/cruisecontrolrb-1.3.0/app,~/Programming/Ruby/cruisecontrolrb-1.3.0/app/models,~/Programming/Ruby/cruisecontrolrb-1.3.0/app/helpers,~/Programming/Ruby/cruisecontrolrb-1.3.0/components,~/Programming/Ruby/cruisecontrolrb-1.3.0/config,~/Programming/Ruby/cruisecontrolrb-1.3.0/lib,~/Programming/Ruby/cruisecontrolrb-1.3.0/vendor,~/Programming/Ruby/cruisecontrolrb-1.3.0/vendor/plugins/*/lib,~/Programming/Ruby/cruisecontrolrb-1.3.0/test/unit,~/Programming/Ruby/cruisecontrolrb-1.3.0/test/functional,~/Programming/Ruby/cruisecontrolrb-1.3.0/test/integration,~/Programming/Ruby/cruisecontrolrb-1.3.0/app/apis,~/Programming/Ruby/cruisecontrolrb-1.3.0/app/services,~/Programming/Ruby/cruisecontrolrb-1.3.0/test,/vendor/plugins/*/test,~/Programming/Ruby/cruisecontrolrb-1.3.0/vendor/rails/*/lib,~/Programming/Ruby/cruisecontrolrb-1.3.0/vendor/rails/*/test,~/Programming/Ruby/cruisecontrolrb-1.3.0,~/Programming/Rub
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb,.rhtml,.rxml,.rjs,.mab,.liquid,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=4
setlocal tags=./tags,tags,~/Programming/Ruby/cruisecontrolrb-1.3.0/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 493 - ((17 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
493
normal! 012l
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
