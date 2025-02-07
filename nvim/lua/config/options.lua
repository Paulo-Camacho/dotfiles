local options = {
	laststatus = 3,
	ruler = false, --disable extra numbering
	showcmd = false,
	wrap = true, --toggle bound to leader W
	mouse = "a", --enable mouse
	clipboard = "unnamedplus", --system clipboard integration
	history = 100, --command line history
	swapfile = false, --swap just gets in the way, usually
	backup = false,
	undofile = true, -- THIS KEEPS UNDO AND REDOS PERSISTENT AFTER CLOSING
	cursorline = true, --highlight line
	ttyfast = true, --faster scrolling
	smoothscroll = true,
	
	number = true, --numbering lines
	relativenumber = true, --toggle bound to leader rn and n 
	numberwidth = 4,

	smarttab = true, --indentation stuff
	cindent = true,
	autoindent = false,
	tabstop = 4, --visual width of tab

	foldmethod = "expr",
	foldlevel = 99, --disable folding, lower #s enable
	foldexpr = "nvim_treesitter#foldexpr()",
	
	termguicolors = true,

	ignorecase = true, --ignore case while searching
	smartcase = true, --but do not ignore if caps are used

	conceallevel = 2, --markdown conceal
	concealcursor = "nc",

	splitkeep = 'screen', --stablizie window open/close
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	signs = false,
})
