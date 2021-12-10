lua << EOF
local actions = require("telescope.actions")

require("telescope").setup({
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        sorting_strategy = "ascending",
        prompt_prefix = "> ",
        color_devicons = true,
        border = true,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-h>"] = "which_key",
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        },
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
    },
})
require("telescope").load_extension("fzy_native")
EOF

" Telescope fzf
nnoremap <leader>fa :lua require('telescope.builtin').autocommands()<cr>
nnoremap <leader>fb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fc :lua require('telescope.builtin').commands()<CR>
nnoremap <leader>fd :lua require('telescope.builtin').command_history()<CR>
nnoremap <leader>fe :lua require('telescope.builtin').file_browser()<CR>
nnoremap <leader>ff :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>fg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fh :lua require('telescope.builtin').search_history()<cr>
nnoremap <leader>fk :lua require('telescope.builtin').keymaps()<cr>
nnoremap <leader>fm :lua require('telescope.builtin').man_pages()<CR>
nnoremap <leader>fn :lua require('telescope').edit.neovim({ hidden = true })<CR>
nnoremap <leader>fo :lua require('telescope.builtin').oldfiles()<CR>
nnoremap <leader>fr :lua require('telescope.builtin').registers()<cr>
nnoremap <leader>fs :lua require('telescope.builtin').colorscheme()<cr>
nnoremap <leader>ft :lua require('telescope.builtin').filetypes()<cr>
nnoremap <leader>fv :lua require('telescope.builtin').vim_options()<cr>
nnoremap <leader>fz :lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>

" Git
nnoremap <leader>gb :lua require('telescope.builtin').git_bcommits()<CR>
nnoremap <leader>gc :lua require('telescope.builtin').git_commits()<CR>
nnoremap <leader>gf :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>gr :lua require('telescope.builtin').git_branches()<CR>
nnoremap <leader>gs :lua require('telescope.builtin').git_status()<CR>
nnoremap <leader>gt :lua require('telescope.builtin').git_stash()<CR>

" Help
nnoremap <leader>ht :lua require('telescope.builtin').help_tags()<CR>

" Búsquedas
