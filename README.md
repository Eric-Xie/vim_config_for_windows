# Configurations of VIM for windows

## Description
&esmp;&esmp;This is one example of vim's config file(\_vimrc) for windows platform.

## Install
&esmp;&esmp;Replace the native config file with this file.

### vundle
1. Open windows shell with "cmd"
cd %USERPROFILE%
git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%/vimfiles/bundle/Vundle.vim/
2. Modify \_vimrc
set rtp+=%USERPROFILE%/vimfiles/bundle/Vundle.vim/
call vundle#begin('%USERPROFILE%/vimfiles/bundle/')

## ChangeLog
**20161018**
- Enable <Backspace>
- Full screen after starting
- Toggle Menu and Toolbar
- encoding
- Vundle plugin-management 

**20161015**
- Syntax highlight
- Indentation
- No backup
- No wrap
- Color Schema
