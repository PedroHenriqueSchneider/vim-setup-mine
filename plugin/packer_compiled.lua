-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/pedroschneider/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?.lua;/Users/pedroschneider/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?/init.lua;/Users/pedroschneider/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?.lua;/Users/pedroschneider/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/pedroschneider/.cache/nvim/packer_hererocks/2.1.1720049189/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cellular-automaton.nvim"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/cellular-automaton.nvim",
    url = "https://github.com/eandrju/cellular-automaton.nvim"
  },
  ["cloak.nvim"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/cloak.nvim",
    url = "https://github.com/laytan/cloak.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["easy-dotnet.nvim"] = {
    config = { "\27LJ\2\nä\2\0\1\a\0\f\0\27'\1\0\0006\2\1\0009\2\2\0029\2\3\2'\4\4\0B\2\2\0026\3\5\0'\5\6\0B\3\2\0029\3\a\3B\3\1\2\15\0\3\0X\4\aÄ\18\3\2\0'\4\b\0\18\5\0\0'\6\t\0&\3\6\3\18\1\3\0X\3\6Ä\18\3\2\0'\4\n\0\18\5\0\0'\6\v\0&\3\6\3\18\1\3\0L\1\2\0\18/secrets.json\29/.microsoft/usersecrets/\18\\secrets.json,\\AppData\\Roaming\\Microsoft\\UserSecrets\\\14isWindows\27easy-dotnet.extensions\frequire\6~\vexpand\afn\bvim\5L\0\0\5\2\3\0\0066\0\0\0009\0\1\0'\2\2\0-\3\0\0-\4\1\0D\0\4\0\0¿\2¿\31dotnet run --project %s %s\vformat\vstringC\0\0\5\2\3\0\0066\0\0\0009\0\1\0'\2\2\0-\3\0\0-\4\1\0D\0\4\0\0¿\2¿\22dotnet test %s %s\vformat\vstringF\0\0\5\2\3\0\0066\0\0\0009\0\1\0'\2\2\0-\3\0\0-\4\1\0D\0\4\0\0¿\2¿\25dotnet restore %s %s\vformat\vstringD\0\0\5\2\3\0\0066\0\0\0009\0\1\0'\2\2\0-\3\0\0-\4\1\0D\0\4\0\0¿\2¿\23dotnet build %s %s\vformat\vstringª\1\1\3\t\0\14\0\0255\3\1\0003\4\0\0=\4\2\0033\4\3\0=\4\4\0033\4\5\0=\4\6\0033\4\a\0=\4\b\0038\4\1\3B\4\1\2'\5\t\0&\4\5\0046\5\n\0009\5\v\5'\a\f\0B\5\2\0016\5\n\0009\5\v\5'\a\r\0\18\b\4\0&\a\b\aB\5\2\0012\0\0ÄK\0\1\0\nterm \vvsplit\bcmd\bvim\6\r\nbuild\0\frestore\0\ttest\0\brun\1\0\4\frestore\0\nbuild\0\brun\0\ttest\0\0!\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\fsecrets%\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\16run_project»\f\1\0\b\0008\0B3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0015\4\4\0006\5\5\0=\5\5\0045\5\6\0005\6\a\0=\6\b\0055\6\n\0005\a\t\0=\a\v\0065\a\f\0=\a\r\0065\a\14\0=\a\15\0065\a\16\0=\a\17\0065\a\18\0=\a\19\0065\a\20\0=\a\21\0065\a\22\0=\a\23\0065\a\24\0=\a\25\0065\a\26\0=\a\27\0065\a\28\0=\a\29\0065\a\30\0=\a\31\0065\a \0=\a!\0065\a\"\0=\a#\6=\6$\0054\6\0\0=\6%\5=\5&\0043\5'\0=\5(\0045\5)\0=\0*\5=\5+\0045\5,\0=\5-\4B\2\2\0016\2.\0009\2/\0029\0020\2'\0041\0003\0052\0004\6\0\0B\2\4\0016\2.\0009\0023\0029\0024\2'\0045\0'\0056\0003\0067\0B\2\4\0012\0\0ÄK\0\1\0\0\n<C-p>\6n\bset\vkeymap\0\fSecrets\29nvim_create_user_command\bapi\bvim\29auto_bootstrap_namespace\1\0\2\ttype\17block_scoped\fenabled\2\fsecrets\tpath\1\0\1\tpath\0\rterminal\0\16test_runner\20additional_args\rmappings\23refresh_testrunner\1\0\2\tdesc\23refresh testrunner\blhs\n<C-r>\nclose\1\0\2\tdesc\21close testrunner\blhs\6q\17collapse_all\1\0\2\tdesc\17collapse all\blhs\6W\15expand_all\1\0\2\tdesc\15expand all\blhs\6-\16expand_node\1\0\2\tdesc\16expand node\blhs\6E\vexpand\1\0\2\tdesc\vexpand\blhs\6o\20peek_stacktrace\1\0\2\tdesc#peek stacktrace of failed test\blhs\14<leader>p\brun\1\0\2\tdesc\rrun test\blhs\14<leader>r\frun_all\1\0\2\tdesc\18run all tests\blhs\14<leader>R\15go_to_file\1\0\2\tdesc\16got to file\blhs\6g\15debug_test\1\0\2\tdesc\15debug test\blhs\14<leader>d\24filter_failed_tests\1\0\2\tdesc\24filter failed tests\blhs\15<leader>fe\25run_test_from_buffer\1\0\r\24filter_failed_tests\0\17collapse_all\0\15debug_test\0\20peek_stacktrace\0\15go_to_file\0\23refresh_testrunner\0\brun\0\frun_all\0\nclose\0\16expand_node\0\vexpand\0\25run_test_from_buffer\0\15expand_all\0\1\0\2\tdesc\25run test from buffer\blhs\14<leader>r\nicons\1\0\n\fsuccess\bÔíû\bsln\tÛ∞òê\ttest\bÔíô\vreload\bÔë™\fproject\tÛ∞òê\fpackage\bÔíá\fskipped\bÔîó\bdir\bÔêì\vfailed\bÔîØ\vpassed\bÔíû\1\0\a\nicons\0\rmappings\0\rviewmode\nfloat!enable_buffer_test_execution\2\fnoBuild\2\14noRestore\2\20additional_args\0\17get_sdk_path\1\0\b\16test_runner\0\20csproj_mappings\2\17get_sdk_path\0\20fsproj_mappings\2\rterminal\0\29auto_bootstrap_namespace\0\fsecrets\0\vpicker\14telescope\nsetup\16easy-dotnet\frequire\0\0" },
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/easy-dotnet.nvim",
    url = "https://github.com/GustavEikaas/easy-dotnet.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  harpoon = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["refactoring.nvim"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/refactoring.nvim",
    url = "https://github.com/theprimeagen/refactoring.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\nè\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\1\0\2\17dark_variant\tmain\20disable_italics\2\nsetup\14rose-pine\frequire\0" },
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/Users/pedroschneider/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: easy-dotnet.nvim
time([[Config for easy-dotnet.nvim]], true)
try_loadstring("\27LJ\2\nä\2\0\1\a\0\f\0\27'\1\0\0006\2\1\0009\2\2\0029\2\3\2'\4\4\0B\2\2\0026\3\5\0'\5\6\0B\3\2\0029\3\a\3B\3\1\2\15\0\3\0X\4\aÄ\18\3\2\0'\4\b\0\18\5\0\0'\6\t\0&\3\6\3\18\1\3\0X\3\6Ä\18\3\2\0'\4\n\0\18\5\0\0'\6\v\0&\3\6\3\18\1\3\0L\1\2\0\18/secrets.json\29/.microsoft/usersecrets/\18\\secrets.json,\\AppData\\Roaming\\Microsoft\\UserSecrets\\\14isWindows\27easy-dotnet.extensions\frequire\6~\vexpand\afn\bvim\5L\0\0\5\2\3\0\0066\0\0\0009\0\1\0'\2\2\0-\3\0\0-\4\1\0D\0\4\0\0¿\2¿\31dotnet run --project %s %s\vformat\vstringC\0\0\5\2\3\0\0066\0\0\0009\0\1\0'\2\2\0-\3\0\0-\4\1\0D\0\4\0\0¿\2¿\22dotnet test %s %s\vformat\vstringF\0\0\5\2\3\0\0066\0\0\0009\0\1\0'\2\2\0-\3\0\0-\4\1\0D\0\4\0\0¿\2¿\25dotnet restore %s %s\vformat\vstringD\0\0\5\2\3\0\0066\0\0\0009\0\1\0'\2\2\0-\3\0\0-\4\1\0D\0\4\0\0¿\2¿\23dotnet build %s %s\vformat\vstringª\1\1\3\t\0\14\0\0255\3\1\0003\4\0\0=\4\2\0033\4\3\0=\4\4\0033\4\5\0=\4\6\0033\4\a\0=\4\b\0038\4\1\3B\4\1\2'\5\t\0&\4\5\0046\5\n\0009\5\v\5'\a\f\0B\5\2\0016\5\n\0009\5\v\5'\a\r\0\18\b\4\0&\a\b\aB\5\2\0012\0\0ÄK\0\1\0\nterm \vvsplit\bcmd\bvim\6\r\nbuild\0\frestore\0\ttest\0\brun\1\0\4\frestore\0\nbuild\0\brun\0\ttest\0\0!\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\fsecrets%\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\16run_project»\f\1\0\b\0008\0B3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0015\4\4\0006\5\5\0=\5\5\0045\5\6\0005\6\a\0=\6\b\0055\6\n\0005\a\t\0=\a\v\0065\a\f\0=\a\r\0065\a\14\0=\a\15\0065\a\16\0=\a\17\0065\a\18\0=\a\19\0065\a\20\0=\a\21\0065\a\22\0=\a\23\0065\a\24\0=\a\25\0065\a\26\0=\a\27\0065\a\28\0=\a\29\0065\a\30\0=\a\31\0065\a \0=\a!\0065\a\"\0=\a#\6=\6$\0054\6\0\0=\6%\5=\5&\0043\5'\0=\5(\0045\5)\0=\0*\5=\5+\0045\5,\0=\5-\4B\2\2\0016\2.\0009\2/\0029\0020\2'\0041\0003\0052\0004\6\0\0B\2\4\0016\2.\0009\0023\0029\0024\2'\0045\0'\0056\0003\0067\0B\2\4\0012\0\0ÄK\0\1\0\0\n<C-p>\6n\bset\vkeymap\0\fSecrets\29nvim_create_user_command\bapi\bvim\29auto_bootstrap_namespace\1\0\2\ttype\17block_scoped\fenabled\2\fsecrets\tpath\1\0\1\tpath\0\rterminal\0\16test_runner\20additional_args\rmappings\23refresh_testrunner\1\0\2\tdesc\23refresh testrunner\blhs\n<C-r>\nclose\1\0\2\tdesc\21close testrunner\blhs\6q\17collapse_all\1\0\2\tdesc\17collapse all\blhs\6W\15expand_all\1\0\2\tdesc\15expand all\blhs\6-\16expand_node\1\0\2\tdesc\16expand node\blhs\6E\vexpand\1\0\2\tdesc\vexpand\blhs\6o\20peek_stacktrace\1\0\2\tdesc#peek stacktrace of failed test\blhs\14<leader>p\brun\1\0\2\tdesc\rrun test\blhs\14<leader>r\frun_all\1\0\2\tdesc\18run all tests\blhs\14<leader>R\15go_to_file\1\0\2\tdesc\16got to file\blhs\6g\15debug_test\1\0\2\tdesc\15debug test\blhs\14<leader>d\24filter_failed_tests\1\0\2\tdesc\24filter failed tests\blhs\15<leader>fe\25run_test_from_buffer\1\0\r\24filter_failed_tests\0\17collapse_all\0\15debug_test\0\20peek_stacktrace\0\15go_to_file\0\23refresh_testrunner\0\brun\0\frun_all\0\nclose\0\16expand_node\0\vexpand\0\25run_test_from_buffer\0\15expand_all\0\1\0\2\tdesc\25run test from buffer\blhs\14<leader>r\nicons\1\0\n\fsuccess\bÔíû\bsln\tÛ∞òê\ttest\bÔíô\vreload\bÔë™\fproject\tÛ∞òê\fpackage\bÔíá\fskipped\bÔîó\bdir\bÔêì\vfailed\bÔîØ\vpassed\bÔíû\1\0\a\nicons\0\rmappings\0\rviewmode\nfloat!enable_buffer_test_execution\2\fnoBuild\2\14noRestore\2\20additional_args\0\17get_sdk_path\1\0\b\16test_runner\0\20csproj_mappings\2\17get_sdk_path\0\20fsproj_mappings\2\rterminal\0\29auto_bootstrap_namespace\0\fsecrets\0\vpicker\14telescope\nsetup\16easy-dotnet\frequire\0\0", "config", "easy-dotnet.nvim")
time([[Config for easy-dotnet.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\1\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\nè\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\1\0\2\17dark_variant\tmain\20disable_italics\2\nsetup\14rose-pine\frequire\0", "config", "rose-pine")
time([[Config for rose-pine]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
