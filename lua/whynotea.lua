vim.keymap.set('i','jj','<ESC>')
local opts = { noremap = true, silent = true}
vim.keymap.set('n','<C-t>h',':tabprevious<CR>', opts)
vim.keymap.set('n','<C-t>n',':tabnew<CR>', opts)
vim.keymap.set('n','<C-t>x',':tabclose<CR>', opts)
vim.keymap.set('n','<C-t>l',':tabnext<CR>', opts)
vim.keymap.set('n','<C-x>',':NvimTreeToggle<CR>', opts)

-- barbar
vim.keymap.set('n','<A-h>',':BufferPrevious<CR>', opts)
vim.keymap.set('n','<A-l>',':BufferNext<CR>', opts)
vim.keymap.set('n','<A-c>',':BufferClose<CR>', opts)
local opt = vim.opt

opt.textwidth = 80
opt.shiftwidth = 2
opt.tabstop = 2
opt.lbr = true
opt.tw = 400
opt.ai = true
opt.si = true
opt.colorcolumn="81"
