local M = {}

M.setup = function(opts)
  return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'

      -- REQUIRED
      harpoon:setup()
      -- REQUIRED

      -- append to the list
      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end)

      -- display list ui
      vim.keymap.set('n', '<leader>hh', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'List harpooned list' })

      -- add to 1
      vim.keymap.set('n', '<leader>h1', function()
        harpoon:list():replace_at(1)
        print('added buffer to harpoon @a 1')
      end)

      -- add to 2
      vim.keymap.set('n', '<leader>h2', function()
        harpoon:list():replace_at(2)
        print('added buffer to harpoon @a 2')
      end)

      -- add to 3
      vim.keymap.set('n', '<leader>h3', function()
        harpoon:list():replace_at(3)
        print('added buffer to harpoon @a 3')
      end)

      -- add to 4
      vim.keymap.set('n', '<leader>h4', function()
        harpoon:list():replace_at(4)
        print('added buffer to harpoon @a 4')
      end)

      -- select 1
      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end)

      -- select 2
      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end)

      -- select 3
      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end)

      -- select 4
      vim.keymap.set('n', '<leader>4', function()
        harpoon:list():select(4)
      end)

      -- select previous
      vim.keymap.set('n', '<leader>hp', function()
        harpoon:list():prev()
      end)

      -- select next
      vim.keymap.set('n', '<leader>hn', function()
        harpoon:list():next()
      end)

      -- clear list
      vim.keymap.set('n', '<leader>hc', function()
        harpoon:list():clear()
        print('harpoon list cleared')
      end)

      -- Use telescope UI for harpoon
      local conf = require("telescope.config").values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require("telescope.pickers").new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        }):find()
      end

      vim.keymap.set("n", "<leader>ht",
        function()
          toggle_telescope(harpoon:list())
        end,
        { desc = "Open harpoon window" })
    end,
  }
end

return M