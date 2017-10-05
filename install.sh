echo "Installing .vimrc and .vim"
SCRIPT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $SCRIPT_DIRECTORY
echo $HOME
ln -s "$SCRIPT_DIRECTORY/.vimrc" "$HOME/.vimrc"
ln -s "$SCRIPT_DIRECTORY/vimfiles" "$HOME/.vim"
