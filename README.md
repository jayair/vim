# vim

My personal vim setup for the Mac. Uses [MacVim](https://macvim.org). Support for TS, JS, JSX, etc.

## Steps

1. Install [MacVim](https://macvim.org)

2. Add `mvim` command

   - Add `export PATH="/Applications/MacVim.app/Contents/bin:$PATH"` to `.zshrc`

3. Load configs, clone repo into `~/.vim`

4. Add colorscheme [Nord](https://github.com/nordtheme/vim/tree/main)

   - Copy [file](https://github.com/nordtheme/vim/blob/main/colors/nord.vim) to `~/.vim/pack/colors/opt/nord/colors/nord.vim`

5. [Enable GitHub Copilot](https://docs.github.com/en/copilot/getting-started-with-github-copilot?tool=vimneovim)

6. Enable fuzzy search with [fzf](https://github.com/junegunn/fzf)

   - Install fzf, `brew install fzf`
   - Add [rg](https://github.com/BurntSushi/ripgrep) for search in files with `brew install ripgrep`
   - Add [fzf.vim](https://github.com/junegunn/fzf.vim), `git clone https://github.com/junegunn/fzf.vim.git` in `.vim/pack/plugins/start`

7. Enable TS autocomplete with [coc.nvim](https://github.com/neoclide/coc.nvim)

   - Install with [native package manager](https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#using-vim8s-native-package-manager)
   - Install tsserver with `:CocInstall coc-tsserver`

8. Enable format on save with [Prettier](https://prettier.io)
   - Install [vim-prettier](https://github.com/prettier/vim-prettier#install) to `.vim/pack/plugins/start`
   - Install prettier by running `npm install` in `.vim/pack/plugins/start/vim-prettier`
