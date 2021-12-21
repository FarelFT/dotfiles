vim.g.nvim_tree_width = 25
vim.g.nvim_tree_indent_markers = 1
require'nvim-tree'.setup {auto_open = 1, auto_close = 1, gitignore = 1}


vim.cmd('nnoremap <C-n> :NvimTreeToggle<CR>')
vim.cmd('nnoremap <leader>r :NvimTreeRefresh<CR>')
vim.cmd('nnoremap <leader>n :NvimTreeFindFile<CR>')
