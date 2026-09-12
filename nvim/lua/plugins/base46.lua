-- Required by colors/dms.lua and lua/lualine/themes/dms.lua (DankMaterialShell
-- integration). Without it both files bail out with an error notification.
-- Kept lazy: it only loads if you actually pick the "dms" colorscheme.
return {
	"AvengeMedia/base46",
	branch = "v3.0",
	lazy = true,
}
