#!/usr/bin/env bash

check_install_zsh(){
    if [ -z $(which zsh) ]; then
        echo "Zsh is not installed. Please install zsh and run this script again."
        exit 1
    fi
}

copy_files(){
    cp -rf .tmux.conf .zshrc aliases functions ~
    cp -rf authorized_keys ~/.ssh
}

install_oh_my_zsh(){
    if [ ! -d ~/.oh-my-zsh ]; then
        echo "Installing Oh My Zsh..."
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi
}

create_ssh_dir(){
    mkdir -p ~/.ssh
    chmod 700 ~/.ssh
}

check_install_zsh
install_oh_my_zsh
create_ssh_dir
copy_files
