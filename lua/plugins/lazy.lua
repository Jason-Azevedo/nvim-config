-- Quickly bootstrap lazy if it does not exist
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


-- Paste lazy plugin setup here
require("lazy").setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    { "nvim-telescope/telescope.nvim", tag = "0.1.8", dependencies = { 'nvim-lua/plenary.nvim' } },

	{
	  "nvim-tree/nvim-tree.lua",
	  version = "*",
	  lazy = false,
	  dependencies = {
	    "nvim-tree/nvim-web-devicons",
	  },
	  config = function()
	    require("nvim-tree").setup {}
	  end,
	},

	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

	{
		"iamcco/markdown-preview.nvim",
		cmd = "MarkdownPreviewToggle",
		ft = { "markdown" },
		build = function() nvim.fn["mkdp#util#install"]() end
	},

	{
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup({ create_mappings = false })
		end
	}
})


-- Plugin configuration
vim.cmd.colorscheme "catppuccin-frappe"
