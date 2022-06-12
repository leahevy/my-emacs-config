#!/bin/bash
set -euo pipefail

if [[ ! -e "$HOME/.doom.d" ]]; then
    ln -s "$(pwd)" "$HOME/.doom.d"
fi

if [[ ! -d "$HOME/.emacs.d" ]]; then
    git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
    ~/.emacs.d/bin/doom install
else
    ~/.emacs.d/bin/doom upgrade
fi

~/.emacs.d/bin/doom sync