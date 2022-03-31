require('neorg').setup {
    load = {
        ["core.defaults"] = {},
		["core.gtd.base"] = {
			config = {
				workspace = "work",
			},
		},
		["core.norg.completion"] = {
			config = {
				engine = 'nvim-cmp'
			}
		},
		["core.norg.concealer"] = {
			config = {
				icon_preset = "basic"
			},
		},
        ["core.norg.journal"] = {},
		["core.norg.dirman"] = {
            config = {
                workspaces = {
                    work = "~/notes/works",
                    home = "~/notes/myself",
                }
            }
        }
    }
}
