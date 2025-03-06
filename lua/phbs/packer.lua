-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
          require('rose-pine').setup({
              dark_variant = 'main',
              disable_italics = true, -- Ajuste conforme necessário
          })
          vim.cmd('colorscheme rose-pine')
      end
    })

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  use {
                'nvim-treesitter/nvim-treesitter',
			run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
			end,}
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

    -- packer.nvim
    use {
      "GustavEikaas/easy-dotnet.nvim",
      requires = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
      config = function()
        local function get_secret_path(secret_guid)
          local path = ""
          local home_dir = vim.fn.expand('~')
          if require("easy-dotnet.extensions").isWindows() then
            local secret_path = home_dir ..
                '\\AppData\\Roaming\\Microsoft\\UserSecrets\\' .. secret_guid .. "\\secrets.json"
            path = secret_path
          else
            local secret_path = home_dir .. "/.microsoft/usersecrets/" .. secret_guid .. "/secrets.json"
            path = secret_path
          end
          return path
        end

        local dotnet = require("easy-dotnet")
        -- Options are not required
        dotnet.setup({
          --Optional function to return the path for the dotnet sdk (e.g C:/ProgramFiles/dotnet/sdk/8.0.0)
          -- easy-dotnet will resolve the path automatically if this argument is omitted, for a performance improvement you can add a function that returns a hardcoded string
          -- You should define this function to return a hardcoded path for a performance improvement 🚀
          get_sdk_path = get_sdk_path,
          ---@type TestRunnerOptions
          test_runner = {
            ---@type "split" | "float" | "buf"
            viewmode = "float",
            enable_buffer_test_execution = true, --Experimental, run tests directly from buffer
            noBuild = true,
            noRestore = true,
              icons = {
                passed = "",
                skipped = "",
                failed = "",
                success = "",
                reload = "",
                test = "",
                sln = "󰘐",
                project = "󰘐",
                dir = "",
                package = "",
              },
            mappings = {
              run_test_from_buffer = { lhs = "<leader>r", desc = "run test from buffer" },
              filter_failed_tests = { lhs = "<leader>fe", desc = "filter failed tests" },
              debug_test = { lhs = "<leader>d", desc = "debug test" },
              go_to_file = { lhs = "g", desc = "got to file" },
              run_all = { lhs = "<leader>R", desc = "run all tests" },
              run = { lhs = "<leader>r", desc = "run test" },
              peek_stacktrace = { lhs = "<leader>p", desc = "peek stacktrace of failed test" },
              expand = { lhs = "o", desc = "expand" },
              expand_node = { lhs = "E", desc = "expand node" },
              expand_all = { lhs = "-", desc = "expand all" },
              collapse_all = { lhs = "W", desc = "collapse all" },
              close = { lhs = "q", desc = "close testrunner" },
              refresh_testrunner = { lhs = "<C-r>", desc = "refresh testrunner" }
            },
            --- Optional table of extra args e.g "--blame crash"
            additional_args = {}
          },
          ---@param action "test" | "restore" | "build" | "run"
          terminal = function(path, action, args)
            local commands = {
              run = function()
                return string.format("dotnet run --project %s %s", path, args)
              end,
              test = function()
                return string.format("dotnet test %s %s", path, args)
              end,
              restore = function()
                return string.format("dotnet restore %s %s", path, args)
              end,
              build = function()
                return string.format("dotnet build %s %s", path, args)
              end
            }

            local command = commands[action]() .. "\r"
            vim.cmd("vsplit")
            vim.cmd("term " .. command)
          end,
          secrets = {
            path = get_secret_path
          },
          csproj_mappings = true,
          fsproj_mappings = true,
          auto_bootstrap_namespace = {
              --block_scoped, file_scoped
              type = "block_scoped",
              enabled = true
          },
          -- choose which picker to use with the plugin
          -- possible values are "telescope" | "fzf" | "basic"
          picker = "telescope"
        })

        -- Example command
        vim.api.nvim_create_user_command('Secrets', function()
          dotnet.secrets()
        end, {})

        -- Example keybinding
        vim.keymap.set("n", "<C-p>", function()
          dotnet.run_project()
        end)
      end
    }

    --[[
    use {
      "OmniSharp/omnisharp-vim",
      config = function()
        vim.g.OmniSharp_server_path = "~/.local/share/nvim/site/pack/packer/start/omnisharp-vim"
      end
    }
    --]]

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")

end)

