require("user.options")
require("user.keymaps")
require("user.autocommands")
require("user.plugins")
require("user.colorscheme")

require("user.impatient")
require("user.todo")
require("user.comment")
require("user.toggleterm")
require("user.bufferline")
require("user.bufdelete")
require("user.neogit")
require("user.autopairs")
require("user.gitsigns")
require("user.cmp")
require("user.git-worktree")
require("user.lsp")
require("user.lspkind")
require("user.lsp_signature")
require("user.lualine")
require("user.telescope")
require("user.test")
require("user.tree")
require("user.treesitter")
require("user.trouble")
require("user.snip")
require("user.symbols-outline")
require("user.which-key")
require("user.neoscroll")
require("user.presence")
require("user.blankline")
require("user.harpoon")

-- generate the later part of the list
-- ls lua/user/*.lua | grep -Ev 'options|keymap|autocommands|plugin|colorscheme' | sed -e 's;^lua/user/;require "user.;g' -e 's/\.lua$/"/g'
--
