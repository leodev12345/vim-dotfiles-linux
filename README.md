# Vim dotfiles

This is my vim configuration

## Screenshots
![Image 1](/screenshots/img1.png)
![Image 2](/screenshots/img2.png)

## Setup

NOTE: This config was made for windows so you will probably need to change a couple of options in the `vimrc` file

Clone this repository into your home dir(linux) or your user folder(windows)
```
git clone --recursive https://github.com/leodev12345/vim-dotfiles
```

Create a `.vimrc` (linux) or `_vimrc` (windows) file in your home/user dir

Paste this into your `.vimrc`/`_vimrc`:
```
runtime vimrc
```

Install DejaVuSansMono nerd font

[GitHub link to font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/DejaVuSansMono)

Also for this config you will need to install wsl on windows, but if you dont need wsl than just delete this line in `vimrc`
```
let &shell='wsl.exe'
```
