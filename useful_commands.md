## New commands
% - moves between (), [], {} (with matchit enabled, works for class/end, if/end, etc.)
gt - go to definition/file
]m, [m, ]M, [M - jump between method beginnings and ends
]], [[ - moves between classes
V - visual select the whole line

zz - move current line to middle of screen
zt - move current line to top of screen
zb - move current line to bottom of screen

var - select around ruby block
vir - select in ruby block
vim - select in method
vam - select around method

cir, dir

iM - inside Class

## Open .directories with GitX
`open -a GitX .

## Compile YouCompleteMe
```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```

## Write all tmux settings to a file
`tmux show -g | cat > tmux_config_values.txt`
