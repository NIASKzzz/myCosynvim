-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local cache_dir = require('core.helper').get_cache_path()

local options = {

  backup = false,                          -- creates a backup file

  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard

  cmdheight = 1,                           -- keep status bar position close to bottom

  completeopt = { "menuone", "noselect" }, -- mostly just for cmp

  conceallevel = 0,                        -- so that `` is visible in markdown files

  fileencoding = "utf-8",                  -- the encoding written to a file

  hidden = true,
  magic = true,
  virtualedit = 'block',
  wildignorecase = ture,
  directory = cache_dir .. 'swap/',
  undodir = cache_dir .. 'undo/',
  backupdir = cache_dir .. 'backup/',
  viewdir = cache_dir .. 'view/',
  spellfile = cache_dir .. 'spell/en.uft-8.add',

  history = 2000,
  timeout = true,
  ttimeout = true,
  timeoutlen = 500,
  ttimeoutlen = 10,
  updatetime = 100,
  redrawtime = 1500,
  infercase = true,
  --completeopt = 'menu,menuone,noselect',
  --showmode = false,
  shortmess = 'aoOTIcF',
  ruler = false,
  showtabline = 0,
  winwidth = 30,
  showcmd = false,
  laststatus = 3,
  list = true,
  listchars = 'tab:»·,nbsp:+,trail:·,extends:→,precedes:←',
  pumblend = 10,
  winblend = 10,
  smarttab = true,
  autoindent = true,

  -- wrap

  linebreak = true,
  whichwrap = 'h,l,<,>,[,],~',
  breakindentopt = 'shift:2,min:20',
  showbreak = '↳  ',
  foldlevelstart = 99,
  foldmethod = 'marker',
  spelloptions = 'camel',
  textwidth = 100,
  colorcolumn = '100',

  hlsearch = true,                         -- highlight all matches on previous search pattern

  ignorecase = true,                       -- ignore case in search patterns

  mouse = "a",                             -- allow the mouse to be used in neovim

  mousescroll = "ver:3,hor:6",

  pumheight = 10,                          -- pop up menu height

  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore

  --showtabline = 2,                         -- always show tabs

  smartcase = true,                        -- smart case

  smartindent = true,                      -- make indenting smarter again

  splitbelow = true,                       -- force all horizontal splits to go below current window

  splitright = true,                       -- force all vertical splits to go to the right of current window

  swapfile = false,                        -- creates a swapfile

  termguicolors = true,                    -- set term gui colors (most terminals support this)

  undofile = true,                         -- enable persistent undo

  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

  expandtab = true,                        -- convert tabs to spaces

  shiftwidth = 2,                          -- the number of spaces inserted for each indentation

  tabstop = 2,                             -- insert 2 spaces for a tab

  cursorline = true,                       -- highlight the current line

  cursorcolumn = false,                    -- cursor column.

  number = true,                           -- set numbered lines

  relativenumber = false,                  -- set relative numbered lines

  numberwidth = 4,                         -- set number column width to 2 {default 4}

  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time

  wrap = false,                            -- display lines as one long line

  scrolloff = 8,                           -- keep 8 height offset from above and bottom

  sidescrolloff = 8,                       -- keep 8 width offset from left and right

  --guifont = "monospace:h17",               -- the font used in graphical neovim applications

  --foldmethod = "indent",                     -- fold with nvim_treesitter

  -- foldexpr = "nvim_treesitter#foldexpr()",

  foldenable = false,                      -- no fold to be applied when open a file

  foldlevel = 99,                          -- if not set this, fold will be everywhere

  spell = false,                            -- add spell support

  spelllang = { 'en_us' },                 -- support which languages?

  diffopt="vertical,filler,internal,context:4",                      -- vertical diff split view

  --cscopequickfix="s-,c-,d-,i-,t-,e-",       -- cscope output to quickfix window

}

if vim.fn.executable('rg') == 1 then

    vim.opt.grepformat = '%f:%l:%c:%m,%f:%l:%m'

    vim.opt.grepprg = 'rg --vimgrep --no-heading --smart-case'

end



for k, v in pairs(options) do

    vim.opt[k] = v

end
