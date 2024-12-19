"プラグイン
packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'neoclide/coc.nvim', { 'branch': 'release' }
Jetpack 'EdenEast/nightfox.nvim'
Jetpack 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Jetpack 'nvim-lualine/lualine.nvim'
Jetpack 'kyazdani42/nvim-web-devicons'
Jetpack 'akinsho/bufferline.nvim'
Jetpack 'github/copilot.vim'
Jetpack 'RRethy/vim-illuminate'
Jetpack 'norcalli/nvim-colorizer.lua'
Jetpack 't9md/vim-quickhl'
Jetpack 'folke/todo-comments.nvim'
Jetpack 'nvim-telescope/telescope.nvim'
Jetpack 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}
Jetpack 'nvim-telescope/telescope-frecency.nvim'
Jetpack 'nvim-telescope/telescope-fzf-writer.nvim'
Jetpack 'nvim-lua/plenary.nvim'
Jetpack 'nvim-treesitter/nvim-treesitter-textobjects'
Jetpack 'RRethy/nvim-treesitter-textsubjects'
Jetpack 'David-Kunz/treesitter-unit'
Jetpack 'GustavoKatel/sidebar.nvim'
Jetpack 'goolord/alpha-nvim'
Jetpack 'petertriho/nvim-scrollbar'
Jetpack 'kevinhwang91/nvim-hlslens'
Jetpack 'yutkat/wb-only-current-line.nvim'
Jetpack 'machakann/vim-sandwich'
Jetpack 'haya14busa/vim-asterisk'
Jetpack 'nvim-neo-tree/neo-tree.nvim'
Jetpack 'MunifTanjim/nui.nvim'
Jetpack 'TimUntersberger/neogit'
Jetpack 'numToStr/Comment.nvim'
Jetpack 'folke/tokyonight.nvim', { 'branch': 'main' }
Jetpack 'bfrg/vim-cpp-modern'
Jetpack 'pangloss/vim-javascript'
Jetpack 'airblade/vim-gitgutter'
Jetpack 'p00f/nvim-ts-rainbow'
Jetpack 'norcalli/nvim-colorizer.lua'
Jetpack 'Mofiqul/vscode.nvim'
Jetpack 'thinca/vim-quickrun', {'on': 'QuickRun'}
Jetpack 'Shougo/vimproc.vim', {'do': 'make'}
Jetpack 'rmagatti/auto-session'
Jetpack 'windwp/nvim-autopairs'
Jetpack 'dkarter/bullets.vim'
Jetpack 'sindrets/diffview.nvim'
Jetpack 'APZelos/blamer.nvim'
Jetpack 'rafamadriz/friendly-snippets'
Jetpack 'smjonas/snippet-converter.nvim'
Jetpack 'honza/vim-snippets'
Jetpack 'mtdl9/vim-log-highlighting'
Jetpack 'AndrewRadev/linediff.vim'
Jetpack 'gbprod/yanky.nvim'
Jetpack 'unblevable/quick-scope'
Jetpack 'mfussenegger/nvim-treehopper'
Jetpack 'David-Kunz/treesitter-unit'
Jetpack 'phaazon/hop.nvim'
Jetpack 'aiya000/aho-bakaup.vim'
Jetpack 'famiu/bufdelete.nvim'
Jetpack 'haya14busa/vim-edgemotion'
Jetpack 'yssl/QFEnter'
Jetpack 'kevinhwang91/nvim-bqf'
Jetpack 'vim-scripts/dbext.vim'
Jetpack 'vim-denops/denops.vim'
Jetpack 'vim-denops/denops-helloworld.vim'
Jetpack 'vim-skk/skkeleton'
Jetpack 'Shougo/ddc.vim'
Jetpack 'Shougo/ddc-ui-native'
Jetpack 'Shougo/ddc-matcher_head'
Jetpack 'Shougo/ddc-sorter_rank'
Jetpack 'Shougo/ddc-source-around'
" Jetpack 'Shougo/pum.vim'
Jetpack 'kat0h/bufpreview.vim', { 'do': 'deno task prepare' }
call jetpack#end()

"設定
syntax enable
colorscheme nightfox
set termguicolors

set number                     "行番号
set mouse=a                    "マウスを有効にする
set ignorecase                 "大文字小文字を区別しない
set smartcase                  "大文字がるときだけ、大文字小文字を区別する
set clipboard+=unnamedplus     "クリップボード共有
set cursorline                 "カーソル行をハイライト


"""""""""""""""""""""""""
"      インデント
""""""""""""""""""""""""
set autoindent          "改行時に前の行のインデントを計測
set smartindent         "改行時に入力された行の末尾に合わせて次の行のインデントを増減する 
set cindent             "Cプログラムファイルの自動インデントを始める
set smarttab            "新しい行を作った時に高度な自動インデントを行う
set expandtab           "タブ入力を複数の空白に置き換える 

set tabstop=2           "タブを含むファイルを開いた際, タブを何文字の空白に変換するか
set shiftwidth=2        "自動インデントで入る空白数
set softtabstop=0       "キーボードから入るタブの数
set foldmethod=indent   "インデントによる折りたたみ
set foldlevel=99       "折りたたみレベル

let mapleader = "\<Space>"

" bakaup
let g:bakaup_auto_backup = 1

" enable blamer.nvim 
let g:blamer_enabled = 1

let g:copilot_enabled = true

" for markdown. list style
let g:bullets_outline_levels = ['num', 'abc', 'std-']

if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "ファイルタイプに合わせたインデントを利用
  filetype indent on
  "sw=shiftwidth, sts=softtabstop, ts=tabstop, et=expandtabの略
  autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType php         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sql         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType js          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scss        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sass        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript  setlocal sw=4 sts=4 ts=4 et
endif

" terminal mode------------------------------------------
" Ctrl + q でターミナルを終了
tnoremap <C-q> <C-\><C-n>:q<CR>
" ESCでターミナルモードからノーマルモードへ
tnoremap <C-[> <C-\><C-n>
" terminal mode------------------------------------------

" reload init.vim
nnoremap <leader>rr :source $MYVIMRC<CR>

"coc.nvim --------------------------------------------------
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
"coc.nvim --------------------------------------------------

" telescope
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope oldfiles<cr>
nnoremap <leader>fq <cmd>Telescope quickfix<cr>

" QFEnter
let g:qfenter_keymap = {}
let g:qfenter_keymap.open = ['<CR>', '<2-LeftMouse>']
let g:qfenter_keymap.vopen = ['<Leader>qv']
let g:qfenter_keymap.hopen = ['<Leader>qh']
let g:qfenter_keymap.topen = ['<Leader>qt']

" treehopper
omap     <silent> m :<C-U>lua require('tsht').nodes()<CR>
xnoremap <silent> m :lua require('tsht').nodes()<CR>

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

xnoremap iu :lua require"treesitter-unit".select()<CR>
xnoremap au :lua require"treesitter-unit".select(true)<CR>
onoremap iu :<c-u>lua require"treesitter-unit".select()<CR>
onoremap au :<c-u>lua require"treesitter-unit".select(true)<CR>

nnoremap <C-u> 8k
nnoremap <C-d> 8j
xnoremap <C-u> 8k
xnoremap <C-d> 8j

" insert line-end
inoremap <C-e> <Esc>A

" eadgemotion
map <C-j> <Plug>(edgemotion-j)
map <C-k> <Plug>(edgemotion-k)

" skk
imap <C-j> <Plug>(skkeleton-toggle)
cmap <C-j> <Plug>(skkeleton-toggle)
call skkeleton#config(#{
  \   eggLikeNewline: v:true,
  \   globalJisyo: "/Users/nakashima/.skk/SKK-JISYO.L",
  \ })

" ddc
call ddc#custom#patch_global('sourceOptions', {
    \   '_': {
    \     'matchers': ['matcher_head'],
    \     'sorters': ['sorter_rank']
    \   },
    \   'skkeleton': {
    \     'mark': 'skkeleton',
    \     'matchers': ['skkeleton'],
    \     'sorters': [],
    \     'minAutoCompleteLength': 2,
    \   },
    \ })
call ddc#enable()

function! s:skkeleton_enable_pre()
  let s:prev_buffer_config = ddc#custom#get_buffer()
  call ddc#custom#patch_buffer({
        \ 'ui': 'native',
        \ 'sources': ['skkeleton'],
        \ })
endfunction

function! s:skkeleton_disable_pre()
  call ddc#custom#set_buffer(prev_buffer_config)
endfunction

augroup skkeleton
  autocmd!
  autocmd User skkeleton-enable-pre call s:skkeleton_enable_pre()
  autocmd User skkeleton-disable-pre  call s:skkeleton_disable_pre()
augroup END

" buffer
nnoremap <silent><C-p> :BufferLineCycleNext<CR>
nnoremap <silent><C-n> :BufferLineCyclePrev<CR>
nnoremap <silent> <leader>bp <cmd>BufferLinePick<CR>
nnoremap <silent> <leader>bs <cmd>BufferLineSortByDirectory<CR>
nnoremap <silent> <leader>w <cmd>Bdelete<CR>

" window 操作
nnoremap <silent> ss <C-w>s
nnoremap <silent> sv <C-w>v
nnoremap <silent> s= <C-w>=
nnoremap sh <C-w>h 
nnoremap sj <C-w>j 
nnoremap sk <C-w>k 
nnoremap sl <C-w>l 

" hop
nnoremap <silent> <leader>m <cmd>HopWord<CR>
xnoremap <silent> <leader>m <cmd>HopWord<CR>

" indent continuation
vnoremap < <gv
vnoremap > >gv

" 行が折り返しても、1行ずつ移動
noremap j gj
noremap k gk

noremap <S-h> ^
noremap <S-l> $

nnoremap + <C-a>
nnoremap - <C-x>

" redo
nnoremap U <c-r>

" delete all
nnoremap <silent> <leader>a ggVG

" forbid to use arrow keys
noremap <Left> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>
inoremap <Left> <Nop>
inoremap <Down> <Nop>
inoremap <Up> <Nop>
inoremap <Right> <Nop>

" 範囲検索
vnoremap z/ <ESC>/\%V
vnoremap z? <ESC>?\%V

" vim-asterisk
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)

" yanky.nvim
nnoremap <silent> p <Plug>(YankyPutAfter)
nnoremap <silent> P <Plug>(YankyPutBefore)
nnoremap <silent> gp <Plug>(YankyGPutAfter)
nnoremap <silent> gP <Plug>(YankyGPutBefore)
xnoremap <silent> p <Plug>(YankyPutAfter)
xnoremap <silent> P <Plug>(YankyPutBefore)
xnoremap <silent> gp <Plug>(YankyGPutAfter)
xnoremap <silent> gP <Plug>(YankyGPutBefore)
nnoremap <silent> <leader>n <Plug>(YankyCycleForward)
nnoremap <silent> <leader>p <Plug>(YankyCycleBackward)

" quickrun
nnoremap <silent><leader>r :QuickRun<CR>
nnoremap <leader>o :only<CR>
let g:quickrun_config = {}

let g:quickrun_config._ = {
    \ 'outputter/error/success': 'buffer',
    \ 'outputter/error/error': 'quickfix',
    \ 'outputter/quickfix/open_cmd': 'copen',
    \ 'runner': 'vimproc',
    \ 'runner/vimproc/updatetime': 60,
    \ 'hook/time/enable': 1,
    \ 'split' : 'vertical'
    \ }
set splitright

" おまけの設定 for Python
let g:quickrun_config.python = {
    \ 'command': '~/.pyenv/shims/python',
    \ 'cmdopt': '-u'
    \ }

let g:quickrun_config.cpp = {
    \ 'command': 'g++',
    \ 'cmdopt': '-std=c++17 -Wall -O2',
    \ 'input': 'input.txt',
    \ 'runner': 'system'
    \ }


lua <<EOF
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {{'filename', path=1}},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    -- lualine_c = {'filename', path = 1},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require("bufferline").setup {
  options = {
    indicator = {
        icon = '▎',
        style = 'underline'
    }
  }
}

local sidebar = require("sidebar-nvim")

require'alpha'.setup(require'alpha.themes.startify'.config)

require("scrollbar").setup()
require("scrollbar.handlers.search").setup()

local neogit = require('neogit')
neogit.setup {
  integrations = {
    diffview = true
  }
}


require('Comment').setup()


require("nvim-treesitter.configs").setup {
  highlight = {
      -- ...
  },
  -- ...
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  textsubjects = {
      enable = true,
      prev_selection = ',', -- (Optional) keymap to select the previous selection
      keymaps = {
          ['.'] = 'textsubjects-smart',
          [';'] = 'textsubjects-container-outer',
          ['i;'] = 'textsubjects-container-inner',
      },
  },
  ensure_installed = 'all', -- :TSInstall allと同じ
}

require('colorizer').setup()

require("nvim-autopairs").setup {
  map_c_h = true,  -- Map the <C-h> key to delete a pair
  map_c_w = true, -- map <c-w> to delete a pair if possible
}

require("scrollbar").setup({
    show = true,
    show_in_active_only = false,
    set_highlights = true,
    folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
    max_lines = false, -- disables if no. of lines in buffer exceeds this
    handle = {
        text = " ",
        color = "grey",
        cterm = nil,
        highlight = "CursorColumn",
        hide_if_all_visible = true, -- Hides handle if all lines are visible
    },
})

require("snippet_converter").setup {
  templates = {
    {
      -- name = "t1", (optionally give your template a name to refer to it in the `ConvertSnippets` command)
      sources = {
        snipmate = { "./snipmate", },
        -- vscode = { "./vscode/cpp.json", },
      },
      output = {
        ultisnips = { "./ultisnips", },
      },
    }
  },
  -- To change the default settings (see configuration section in the documentation)
  -- settings = {},
}

require('yanky').setup()

require('hop').setup()

require('bqf').setup()

require("todo-comments").setup {
  signs = true, -- show icons in the signs column
  sign_priority = 8, -- sign priority
  -- keywords recognized as todo comments
  keywords = {
    FIX = {
      icon = " ", -- icon used for the sign, and in search results
      color = "error", -- can be a hex color, or a named color (see below)
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
      -- signs = false, -- configure signs for some keywords individually
    },
    TODO = { icon = " ", color = "#D9AA66" },
    HACK = { icon = " ", color = "warning" },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
    TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
  },
  gui_style = {
    fg = "NONE", -- The gui style to use for the fg highlight group.
    bg = "BOLD", -- The gui style to use for the bg highlight group.
  },
  merge_keywords = true, -- when true, custom keywords will be merged with the defaults
  -- highlighting of the line containing the todo comment
  -- * before: highlights before the keyword (typically comment characters)
  -- * keyword: highlights of the keyword
  -- * after: highlights after the keyword (todo text)
  highlight = {
    multiline = true, -- enable multine todo comments
    multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
    multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
    before = "", -- "fg" or "bg" or empty
    keyword = "wide", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
    after = "fg", -- "fg" or "bg" or empty
    pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
    comments_only = true, -- uses treesitter to match keywords in comments only
    max_line_len = 400, -- ignore lines longer than this
    exclude = {}, -- list of file types to exclude highlighting
  },
  -- list of named colors where we try to extract the guifg from the
  -- list of highlight groups or use the hex color if hl not found as a fallback
  colors = {
    error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    warning = { "DiagnosticWarning", "WarningMsg", "#D9AA66" },
    info = { "DiagnosticInfo", "#2563EB" },
    hint = { "DiagnosticHint", "#10B981" },
    default = { "Identifier", "#7C3AED" },
    test = { "Identifier", "#FF00FF" }
  },
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    -- regex that will be used to match keywords.
    -- don't replace the (KEYWORDS) placeholder
    pattern = [[\b(KEYWORDS):]], -- ripgrep regex
    -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
  },
}

EOF
