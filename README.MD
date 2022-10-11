# dotfiles

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg)](/LICENSE) | ![version](https://img.shields.io/badge/version-v1.0.0-df5e88)

This is my dotfiles repo. It's a work in progress... like everyones :-)

![screenshot](https://github.com/webservices-network/dotfiles/blob/main/screenshot.png)

Management of dotfiles are controlled through [chezmoi](https://www.chezmoi.io/).

## My Setup
- OS: MacOS
- Shell: zsh (added bash & fish support too... because why not?)
- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/)
- Attempting to code with NeoVim and chosen AstroNvim package, LunarVim seem to be too helpful, if that makes sense ;-)
- Package Manager: [Homebrew](https://brew.sh/)
- Zsh Plugin Manager: [Antidote](https://getantidote.github.io/)
  - Plugins Used
    - zsh-autosuggestions
    - zsh-completions
    - zsh-history-substring-search
    - zsh-syntax-highlighting


## Installations
- Install [Homebrew](https://docs.brew.sh/Installation)
- Install Xcode Command Line Tools
  > xcode-select --install 
- Verify Xcode installed
  > xcode-select -p

### TODO
- [x] Setup dotfiles management using [chezmoi](https://www.chezmoi.io/)
- [x] Revert to Zsh as the default shell
- [x] Choose an Neovim package, [LunarVim](https://www.lunarvim.org/) or [AstroNvim](https://github.com/AstroNvim/AstroNvim)
- [ ] Create install automation script (Maybe Ansible?)
