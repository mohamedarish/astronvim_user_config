return {
  "andweeb/presence.nvim",
  opts = {
    -- general options
    auto_update = true,                             -- update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    neovim_image_text = "the one true text editor", -- text displayed when hovered over the neovim image
    main_image = "file",                            -- main image display (either "neovim" or "file")
    client_id = "793271441293967371",               -- use your own discord application client id (not recommended)
    log_level = nil,                                -- log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    debounce_timeout = 10,                          -- number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    enable_line_number = false,                     -- displays the current line number instead of the current project
    blacklist = {},                                 -- a list of strings or lua patterns that disable rich presence if the current file name, path, or workspace matches
    buttons = true,                                 -- configure rich presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
    file_assets = {},                               -- custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
    show_time = true,                               -- show the timer
    -- rich presence text options
    editing_text = "editing %s",                    -- format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    file_explorer_text = "browsing %s",             -- format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    git_commit_text = "committing changes",         -- format string rendered when committing changes in git (either string or function(filename: string): string)
    plugin_manager_text = "managing plugins",       -- format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    reading_text = "reading %s",                    -- format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text = "working on %s",               -- format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    line_number_text = "line %s out of %s",         -- format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
  },
  event = "BufEnter",
}
