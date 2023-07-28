# Just another Nvim configuration

My humble nvim configuration tailored to (Embedded) C/C++ development.

## Core Packages
 - treesitter
 - vim-fugitive
 - lsp-zero
 - neogen
 - nvim-dap
 - nvim-dap-ui
 - gruvbox-flat theme

## Shoutouts
 - [The Primeagen - Neovim From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE)
 - [The Primeagen Nvim repo](https://github.com/ThePrimeagen/init.lua)
 - [How to debug like a PRO using Neovim](https://miguelcrespo.co/posts/how-to-debug-like-a-pro-using-neovim/)

## Installation 
1. Replace everything you have in ~/.config/nvim/ with the contents of this repo.
2. Open packer file ```nvim ~/.config/nvim/lua/kefir/packer.lua``` and shout it out ```:so```
3. Run ```:PackerSync```
4. After that close and open Neovim. Everything should be installed.

## Configuration
Only thing that should be configured `manually` is your path to vscode DAP.
This string is located in ./after/plugin/dap.lua

## Default key bindings
TDOD: add
