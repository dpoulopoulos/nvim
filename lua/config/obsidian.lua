require("obsidian").setup({
  workspaces = {
    {
      name = "zettelkasten",
      path = "/home/dimpo/onedrive/Documents/zettelkasten",
    },
  },

  notes_subdir = "01.notes",
  new_notes_location = "notes_subdir",

  daily_notes = {
    -- Optional, if you keep daily notes in a separate directory.
    folder = "00.journal",
    -- Optional, if you want to change the date format for the ID of daily notes.
    date_format = "%Y-%m-%d",
    -- Optional, default tags to add to each new daily note created.
    default_tags = { "daily-notes" },
    -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
    template = "journal.md",
  },

  -- disable_frontmatter = true,

  -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
  completion = {
    -- Set to false to disable completion.
    nvim_cmp = true,
    -- Trigger completion at 2 chars.
    min_chars = 2,
  },

  templates = {
    subdir = "_templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M:%S",
  },

  mappings = {
    -- overrides the 'gf' mapping to work on markdown/wiki links within your vault
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    -- toggle check-boxes
    ["<leader>ch"] = {
      action = function()
        return require("obsidian").util.toggle_checkbox()
      end,
      opts = { buffer = true },
    },
  },
})
