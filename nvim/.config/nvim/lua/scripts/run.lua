local function find_project_root()
    local path = vim.fn.expand("%:p:h") -- começa do diretório do arquivo atual
    while path ~= "/" do
        if vim.fn.filereadable(path .. "/project.toml") == 1 or vim.fn.filereadable(path .. "/project.yaml") == 1 then
            return path
        end
        path = vim.fn.fnamemodify(path, ":h") -- sobe um nível
    end
    return nil
end

_G.run_project = function(cmd)
    local root = find_project_root()
    if not root then
        print("Error: Project root not found")
        return
    end
    local toml = require("toml")
    local file = io.open(root .. "/project.toml", "r")
    if not file then
        print("Error: Project file not found")
        return
    end
    local content = file:read("*a")
    file:close()
    if not content then
        print("Error: Project file:content not found")
        return
    end
    local config = toml.parse(content)
    local run_cmd = config[cmd] or config.build[cmd]
    if not run_cmd then
        print("Error: 'run' command not defined in project.toml")
        return
    end

    vim.cmd("split | resize 10")
    vim.cmd("terminal cd " .. root .. " && " .. run_cmd)
end

vim.keymap.set("n", "<leader>pr", function()
    _G.run_project("run")
end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pt", function()
    _G.run_project("test")
end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pb", function()
    _G.run_project("build")
end, { noremap = true, silent = true })
