# vim

My personal vim setup for the Mac. Uses [MacVim](https://macvim.org).

## Steps

1. Install [MacVim](https://macvim.org)

2. Add `mvim` command
   - Add `export PATH="/Applications/MacVim.app/Contents/bin:$PATH"` to `.zshrc`

2. Add configs, [`.vimrc`](.vimrc) and [`.gvimrc`](.gvimrc)

3. Add colorscheme [Nord](https://github.com/nordtheme/vim/tree/main)
   - Copy [file](https://github.com/nordtheme/vim/blob/main/colors/nord.vim) to `.vim/pack/colors/opt/nord/colors/nord.vim`
   - Enable with `colorscheme nord`

4. [Enable GitHub Copilot](https://docs.github.com/en/copilot/getting-started-with-github-copilot?tool=vimneovim)

5. Enable fuzzy file search with [fzf](https://github.com/junegunn/fzf)
   - Install fzf, `brew install fzf`
   - Add to `.vimrc`, `set rtp+=/opt/homebrew/opt/fzf`
   - Add Ctrl+P to `.vimrc`, `nmap <C-P> :FZF<CR>`

6. Replace [fd](https://github.com/sharkdp/fd) as default find command for fzf to respect `.gitignore`
   - Install fd, `brew install fd`
   - Add `export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'` to `.zshrc`

7. Enable TS autocomplete with [coc.nvim](https://github.com/neoclide/coc.nvim)
   - Install with [native package manager](https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#using-vim8s-native-package-manager)
   - Install tsserver with `:CocInstall coc-tsserver`

8. Enable format on save
   - Add to `:CocConfig`

     ```
     {
       "coc.preferences.formatOnSaveFiletypes": [
         "javascript",
         "javascriptreact",
         "typescript",
         "typescriptreact"
       ]
     }
     ```
