set scrolloff=10
set showmode
set showcmd
set visualbell
set clipboard+=unnamed
set number relativenumber
set ignorecase
set smartcase
set incsearch
set hlsearch
set timeoutlen=2000
let mapleader = " "
inoremap jk <Esc>
inoremap kj <Esc>
vnoremap < <gv
vnoremap > >gv
nnoremap <C-m> :tabnext<CR>
nnoremap <C-n> :tabprev<CR>
nnoremap + ^
nnoremap ´ $
noremap <C-d> 10j
noremap <C-e> 10k
nnoremap æ ~
nnoremap <leader>g gd
nnoremap Q @q
xnoremap <leader>p "_dP
nnoremap <A-l> :nohlsearch<CR>:let @/ = ""<CR>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap <leader>b <C-O>
" WIN emulation
vnoremap <BS> d
vnoremap <C-c> "+y
vnoremap <C-x> "+x
vnoremap <C-v> "+y
map <C-v> "+p
noremap <C-q> <C-V>
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <Esc>:update<CR>gi

if has('ide')
    " Plugins
    set highlightedyank
    set surround
    set nerdtree
    set which-key
    set ideajoin
    set clipboard+=ideaput
    set easymotion
    set sneak
    " Which-key
    let g:WhichKey_FontSize = 22
    let g:WhichKey_CommandColor = "#41ead4"
    let g:WhichKey_PrefixColor = "#f335b2"
    let g:WhichKey_SortOrder = "by_key_prefix_first"
    let g:WhichKey_DefaultDelay = 600
    let g:WhichKeyDesc_jk = "jk"
    let g:WhichKeyDesc_kj = "kj"
    let g:WhichKeyDesc_ds = "ds"
    " Handlers
    sethandler <C-a> a:ide
    sethandler <C-w> a:ide
    sethandler <C-s> a:ide
    sethandler <A-d> a:ide
    " Buffers
    map <leader>ww <Action>(MoveTabRight)
    map <leader>wW <Action>(SplitVertically)
    map <leader>ws <Action>(MoveTabDown)
    map <leader>wS <Action>(SplitHorizontally)
    map <leader>we <Action>(Unsplit)
    map <leader>wd <Action>(MoveEditorToOppositeTabGroup)
    map <leader>wq <Action>(CloseAllEditorsButActive)
    " IDEA display actions
    map <leader>x <Action>(QuickJavaDoc)
    map <leader>s <Action>(ShowIntentionActions)
    map <leader>d <Action>(ShowErrorDescription)
    map <leader>z <Action>(ToggleDistractionFreeMode)
    " IDEA code actions
    map <F2> <Action>(RenameElement)
    map <leader>c <Action>(ReformatCode)
    map <leader>C <Action>(ShowReformatFileDialog)
    map <leader>M <Action>(Refactorings.QuickListPopupAction)
    map <leader>m <Action>(ExtractMethod)
    map <leader>q <Action>(CommentByLineComment)
    " IDEA navigation
    map <C-r> <Action>(NextSplitter)
    map <leader>v <Action>(GotoFile)
    map <leader>f <Plug>(easymotion-jumptoanywhere)
    map <leader>l <Action>(RecentLocations)
    map <leader>h <Action>(Annotate)
    map <leader><leader>h <Action>(Vcs.ShowTabbedFileHistory)
    map ge <Action>(GotoNextError)
    map gE <Action>(GotoPreviousError)
    map <leader>b <Action>(Back)
    map <F1> <Action>(ManageRecentProjects)
    map <c-p> <Action>(JumpToLastWindow)
    map <leader>t <Action>(HideAllWindows)<Action>(ActivateProjectToolWindow)
    map <C-f> <Action>(Find)
    map <A-e> <Action>(RecentFiles)
    map <leader>z <Action>(CollapseRegionRecursively)
    map <leader>Z <Action>(ExpandRegionRecursively)
    " IDEA debugger
    map <leader>k <Action>(ToggleLineBreakpoint)
    map <leader>K <Action>(Debugger.RemoveAllBreakpoints)
    map <leader>rr <Action>(RunClass)
    map <leader>rd <Action>(DebugClass)
    map <leader>rc <Action>(RunCoverage)
    map <leader>rs <Action>(Stop)
    map <leader>re <Action>(Rerun)
    " IDEA git
    map <leader>ep <Action>(Git.Pull)
    map <leader>eu <Action>(Vcs.UpdateProject)
    map <leader>ef <Action>(Git.Fetch)
    map <leader>eb <Action>(Git.Branches)
    map <leader>em <Action>(git-commit-message-template.SetCommitMessageAction)
    map <C-k> <Action>(CheckinProject)
    map <C-S-k> <Action>(Vcs.Push)
endif
