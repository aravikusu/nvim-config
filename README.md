# nvim config lol
A collection of my nvim configs. Theme, keybinds, plugins...

Also the first time I've used neovim (and vim in general), so this is also just me learning.

I chose to use `lazy.nvim` as a plugin manager.

## LSP
I have [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) so you can simply check whatever is configured there.
If you don't have the LSP's installed I've included [mason.nvim](https://github.com/mason-org/mason.nvim) in the config. Just call `:Mason` for the GUI to install LSPs, such as:

- gdscript-formatter
- lua-language-server
- pyright
- typescript-language-server
- omnisharp
- rust-analyzer

... and so on. Again, look at lspconfig to see what is configured to work.
The only "gotcha" in a way is ESLint, which instead uses `vscode-eslint-language-server`, which can be installed with NPM:

```npm i -g vscode-langservers-extracted```
