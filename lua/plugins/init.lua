-- ~/.config/nvim/lua/plugins/init.lua

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'


  -- набор Lua функций, используется как зависимость в большинстве
  -- плагинов, где есть работа с асинхронщиной
  use 'nvim-lua/plenary.nvim'

  -- конфиги для LSP серверов, нужен для простой настройки и
  -- возможности добавления новых серверов
  use 'neovim/nvim-lspconfig'


  -- зависимости для движка автодополнения
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'


  -- движок автодополнения для LSP
  use 'hrsh7th/nvim-cmp'


  -- парсер для всех языков программирования, цветной код как в твоем
  -- любимом IDE
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        -- так подгружается конфигурация конкретного плагина
        -- ~/.config/nvim/lua/plugins/treesitter.lua
      end
  }
  -- use "savq/melange-nvim"
  use "ellisonleao/gruvbox.nvim"
  -- vim.opt.termguicolors = true
  --vim.cmd.colorscheme 'melange'
  vim.o.background = "dark" -- or "light" for light mode
  vim.cmd([[colorscheme gruvbox]])
  

  use {
      'kyazdani42/nvim-web-devicons',
      config = function()
        require('nvim-web-devicons').setup({ default = true; })
      end
  }
	

	use  {
		'mfussenegger/nvim-dap',
		config = function()
			require("plugins.dap")
		end
	}

	use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  config = function()
    require("plugins.tree")
  -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
  end
  }


-- плагин для простого комментирования кода
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
    -- автоматические закрывающиеся скобки
  use {
    'windwp/nvim-autopairs',
    config = function()
      require("nvim-autopairs").setup()
    end
  }

  -- статусбар, аналог vim-airline, только написан на lua
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('plugins.lualine')
    end
  }



use {
        'fatih/vim-go',
        run = ':GoUpdateBinaries',
        ft = 'go',
        setup = function()
            vim.g.go_diagnostics_enabled = 1
            vim.g.go_highlight_fields = 1
            vim.g.go_highlight_functions = 1
            vim.g.go_highlight_function_calls = 1
            vim.g.go_highlight_extra_types = 1
            vim.g.go_highlight_operators = 1
            vim.g.go_fmt_autosave = 1
            vim.g.go_fmt_command = "goimports"
            vim.g.go_auto_type_info = 1
            local t = function(str)
                return vim.api.nvim_replace_termcodes(str, true, true, true)
            end

            local check_back_space = function()
                local col = vim.fn.col('.') - 1
                if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                    return true
                else
                    return false
                end
            end

            _G.tab_complete = function()
                if vim.fn.pumvisible() == 1 then
                    return t "<C-n>"
                elseif check_back_space() then
                    return t "<Tab>"
                else
                    return t "<C-x><C-o>"
                end
            end

            _G.s_tab_complete = function()
                if vim.fn.pumvisible() == 1 then
                    return t "<C-p>"
                else
                    return t "<C-h>"
                end
            end

            _G.enter_key = function()
                if vim.fn.pumvisible() == 1 then
                    return t "<C-y>"
                else
                    return t "<CR>"
                end
            end

            vim.api.nvim_set_keymap("i", "<tab>", "<C-R>=v:lua.tab_complete()<CR>" ,{silent = true, noremap = true})
            vim.api.nvim_set_keymap("i", "<s-tab>", "<C-R>=v:lua.s_tab_complete()<CR>" ,{silent = true, noremap = true})
            vim.api.nvim_set_keymap('i', '<enter>', '<C-R>=v:lua.enter_key()<CR>' ,{silent = true, noremap = true})
        end
    }

end)
 


