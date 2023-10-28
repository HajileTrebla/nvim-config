if vim.g.vscode then
    -- VSCode extension
    require("eli.set")
    require("eli.remap")
    require("eli.vscode")
else
    -- ordinary Neovim
    require("eli.set")
    require("eli.remap")
    require("eli.packer")
end
