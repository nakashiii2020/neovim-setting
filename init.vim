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
call jetpack#end()

"設定
syntax enable
colorscheme vscode
set termguicolors

set number
set mouse=a
set ignorecase
set smartcase
set clipboard+=unnamedplus

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

let mapleader = "\<Space>"
let g:im_select_default = 'com.google.inputmethod.Japanese.Roman'

if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "ファイルタイプに合わせたインデントを利用
  filetype indent on
  "sw=shiftwidth, sts=softtabstop, ts=tabstop, et=expandtabの略
  autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType php         setlocal sw=4 sts=4 ts=4 et
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


nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep theme=get_dropdown<cr>
nnoremap <leader>fb <cmd>Telescope buffers theme=get_dropdown<cr>
nnoremap <leader>fh <cmd>Telescope oldfiles theme=get_dropdown<cr>
nnoremap <leader>gb <cmd>Telescope git_branches theme=get_dropdown<cr>
nnoremap <C-u> 10k
nnoremap <C-d> 10j
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>
noremap j gj
noremap k gk
noremap <S-h> ^
noremap <S-l> $
noremap <Left> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>
nnoremap U <c-r>

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

require("bufferline").setup{}

local sidebar = require("sidebar-nvim")

require'alpha'.setup(require'alpha.themes.startify'.config)

require("scrollbar").setup()
require("scrollbar.handlers.search").setup()

local neogit = require('neogit')
neogit.setup {}


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
  }
}

require('colorizer').setup()

require('nvim-treesitter.configs').setup {
}
EOF


