# Requirements

- alacritty
- xclip
- code-minimap
- npm
- rg
- fd
- lazygit
- prettier
- flake8

# Installation

- `:PackerSync`
- `:TSInstallInfo`
- `:LspInstallInfo`
- `:checkhealth`

## How to add new language

- code highlight nvim-treesitter.lua
- install language server
- add language config lsp-installer.lua
- snippets cmp.lua

# TODO

- telescope
- debug for python
- qt config
- markdown config
- readme for add     code highlight    lsp config    code format(lsp or null_lsp)

# Short Key

## Basic

| function                 | short key       |
| ------------------------ | --------------- |
| copy to system clipboard | Y (visual mode) |

## Window split

| function             | short key     |
| -------------------- | ------------- |
| horizon split        | `sv`          |
| vertical split       | `sh`          |
| close current        | `sc`          |
| close other          | `so`          |
| ajust horizon ratio  | `s,` and `s.` |
| ajust vertical ratio | `sj` and `sk` |
| phase ratio          | `s=`          |

## Bufferline

| function            | short key    |
| ------------------- | ------------ |
| choose one to close | `<leader>bc` |
| pin                 | `<leader>bp` |

## Gitsigns

| function        | short key    |
| --------------- | ------------ |
| navigation      | `<leader>j`  |
| navigation      | `<leader>k`  |
|                 |              |
| stage hunk      | `<leader>hs` |
| reset hunk      | `<leader>hr` |
| undo stage hunk | `<leader>hu` |
| preview hunk    | `<leader>hp` |
| stage buffer    | `<leader>hS` |
| reset buffer    | `<leader>hR` |
|                 |              |
| diff this file  | `<leader>hd` |
| toggle detected | `<leader>td` |

## Lsp

| function                  | short key    |
| ------------------------- | ------------ |
| rename                    | `<leader>rm` |
| code action               | `<leader>ca` |
|                           |              |
| go to definition          | `gd`         |
| hover                     | `gh`         |
| go to declaration         | `gD`         |
| go to implementation      | `gi`         |
| go to reference           | `gr`         |
|                           |              |
| open diagnostic float     | `gp`         |
| go to next diagnostic     | `gj`         |
| go to previous diagnostic | `gk`         |

## Nvim tree

| function           | short key   |
| ------------------ | ----------- |
| open tree          | `<leader>e` |
| show file info     | `ctrl + k`  |
| open in vsplit wnd | `v`         |
| open in hsplit wnd | `h`         |
|                    |             |
| show hide files    | `i`         |
| show hide files    | `.`         |
|                    |             |
| refresh            | `F5`        |
| create             | `a`         |
| remove             | `r`         |
| cut                | `x`         |
| copy               | `c`         |
| paste              | `p`         |
| copy file name     | `y`         |

## Telescope

| function             | short key  |
| -------------------- | ---------- |
| find files           | `ctrl + p` |
| find content gloabal | `ctrl + f` |
|                      |            |
| close                | `ctrl + c` |
| next(insert)         | `ctrl + j` |
| previous(insert)     | `ctrl + k` |
|                      |            |
| history(insert)      | `ctrl + n` |
| history(insert)      | `ctrl + p` |
|                      |            |
| preview wnd(insert)  | `ctrl + u` |
| preview wnd(insert)  | `ctrl + d` |

## Comment

| function             | short key |
| -------------------- | --------- |
| current line         | `gcc`     |
| paragraph            | `gcip`    |
| 4 lines              | `gc4j`    |
| delete comment block | `dic`     |
| uncomment block      | `gcic`    |

## Surround

| function     | short key     |
| ------------ | ------------- |
| change       | `cs`          |
| add          | `ys`          |
| add for line | `yss`         |
| delete       | `ds`          |
|              |               |
| <q>          | <q> </q>      |
| t            | tag as above  |
| ]            | have no space |
| [            | have space    |

## Hop

| function      | short key    |
| ------------- | ------------ |
| move line     | `<leader>hl` |
| move word     | `<leader>hw` |
| move anywhere | `<leader>ha` |

## Terminal

| function        | short key   |
| --------------- | ----------- |
| float terminal  | `ctrl + \`  |
| insert terminal | `<leader>t` |
| lazygit         | `<leader>g` |

## Outline

| function       | short key |
| -------------- | --------- |
| focus location | `o`       |
| toggle preview | `gp`      |
| rename symbol  | `r`       |
| code action    | `a`       |
