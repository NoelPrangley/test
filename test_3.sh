#!/usr/bin/env bash
set -e


BASE_DIR=${XDG_CONFIG_HOME:-$HOME}
EZKL_DIR=${EZKL_DIR-"$BASE_DIR/.test"}

# Create the .ezkl bin directory if it doesn't exit
mkdir -p $EZKL_DIR

# Store the correct profile file (i.e. .profile for bash or .zshenv for ZSH).
case $SHELL in
*/zsh)
    PROFILE=${ZDOTDIR-"$HOME"}/.zshenv
    PREF_SHELL=zsh
    ;;
*/bash)
    PROFILE=$HOME/.bashrc
    PREF_SHELL=bash
    ;;
esac

# Check for non standard installation of ezkl
if  [ "$(which ezkl)s" != "s" ] && [ "$(which ezkl)" != "$EZKL_DIR/ezkl" ] ; then
    echo "ezkl is installed in a non-standard directory, $(which ezkl). To use the automated installer, remove the existing ezkl from path to prevent conflicts"
    exit 1
fi

if [[ ":$PATH:" != *":${EZKL_DIR}:"* ]]; then
    # Add the ezkl directory to the path and ensure the old PATH variables remain.
    echo >> $PROFILE && echo "export PATH=\"\$PATH:$EZKL_DIR\"" >> $PROFILE
fi

age=$1

if [[ $age -le 7 || $age -ge 65 ]] ; then
    echo " You can go in for free "

elif [[ $age -gt 7 && $age -lt 65 ]] ; then
    echo " You have to pay for ticket "
fi
