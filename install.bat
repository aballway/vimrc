echo off
title Install .vimrc
setlocal
mklink "%USERPROFILE%/.vimrc" "%~dp0/.vimrc"
mklink /D "%USERPROFILE%/vimfiles" "%~dp0/vimfiles"
