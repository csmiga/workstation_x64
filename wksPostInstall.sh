#!/usr/bin/env bash

################################################################################
# WORKSTATION POST INSTALLATION                                                #
################################################################################

# Login: pi
# Password: raspberry
# Run this script as user 'pi' or newly created user

# BIN DIRECTORY
if [ ! -d ${HOME}/bin ]
then
    echo 'INFO: Creating '${HOME}'/bin since it does not exist.'
    mkdir ${HOME}/bin
fi

# PROJECTS DIRECTORY
if [ ! -d ${HOME}/Projects ]
then
    echo 'INFO: Creating '${HOME}'/Projects since it does not exist.'
    mkdir ${HOME}/Projects
fi

# WORKSPACE DIRECTORY
if [ ! -d ${HOME}/Workspace ]
then
    echo 'INFO: Creating '${HOME}'/Workspace since it does not exist.'
    mkdir ${HOME}/Workspace
fi

# SSH
echo 'INFO: Generating SSH key files.'
ssh-keygen -f ${HOME}/.ssh/id_rsa -t rsa -N ''

# SSH KEYS
if [ ! -d ${HOME}/.ssh/keys ]
then
    echo 'INFO: Creating '${HOME}'/.ssh/keys since it does not exist.'
    mkdir ${HOME}/.ssh/keys
fi

echo 'INFO: Copying SSH key files to user directory.'
chmod 700 ${HOME}/.ssh/keys
cp ${HOME}/.ssh/id_rsa.pub ${HOME}/.ssh/keys/id_rsa-$(id -un).pub
cp ${HOME}/.ssh/id_rsa ${HOME}/.ssh/keys/id_rsa-$(id -un)
chmod 600 ${HOME}/.ssh/keys/*
rm -f ${HOME}/.ssh/id_rsa id_rsa.pub
ln -s ${HOME}/.ssh/keys/id_rsa-$(id -un) ${HOME}/.ssh/id_rsa

# SSH CONFIGS
if [ ! -d ${HOME}/.ssh/configs ]
then
    echo 'INFO: Creating '${HOME}'/.ssh/configs since it does not exist.'
    mkdir ${HOME}/.ssh/configs
fi

echo 'INFO: Copying SSH configuration files to user directory.'
chmod 700 ${HOME}/.ssh/configs
cp files/home_user_ssh_configs/config.lab ${HOME}/.ssh/configs/config.lab
chmod 600 ${HOME}/.ssh/configs/config.lab
ln -s ${HOME}/.ssh/configs/config.lab ${HOME}/.ssh/config

# SSHFS
if [ ! -d ${HOME}/.ssh/sshfs ]
then
    echo 'INFO: Creating '${HOME}'/.ssh/sshfs since it does not exist.'
    mkdir ${HOME}/.ssh/sshfs
fi

echo 'INFO: Copying SSH file system files to user directory.'
cp files/home_user_ssh_sshfs/node1 ${HOME}/.ssh/sshfs/node1
chmod -R 700 ${HOME}/.ssh/sshfs

if [ ! -d /mnt/node1 ]
then
    echo 'INFO: Creating /mnt/node1 since it does not exist.'
    sudo mkdir /mnt/node1
fi

echo 'INFO: Changing file system permissions at SSH file system mount points.'
sudo chgrp users /mnt/node1
sudo chmod 775 /mnt/node1
sudo usermod -a -G users $(id -un)

# SSHPASS
if [ ! -d ${HOME}/.ssh/sshpass ]
then
    echo 'INFO: Creating '${HOME}'/.ssh/sshpass since it does not exist.'
    mkdir ${HOME}/.ssh/sshpass
fi

echo 'INFO: Copying SSH password files to user directory.'
cp files/home_user_ssh_sshpass/ssh-password ${HOME}/.ssh/sshpass/ssh-password
chmod -R 700 ${HOME}/.ssh/sshpass

# SSHUTTLE
if [ ! -d ${HOME}/.ssh/sshuttle ]
then
    echo 'INFO: Creating '${HOME}'/.ssh/sshuttle since it does not exist.'
    mkdir ${HOME}/.ssh/sshuttle
fi

echo 'INFO: Copying SSHuttle files to user directory.'
cp files/home_user_ssh_sshuttle/* ${HOME}/.ssh/sshuttle/
chmod -R 700 ${HOME}/.ssh/sshuttle

# GNUPG
echo 'INFO: Copying GNU Privacy Guard files to user directory.'
cp files/home_user_DOTgnupg/* ${HOME}/.gnupg
chmod 600 ${HOME}/.gnupg/*

# VIM
echo 'INFO: Copying Vi IMproved RC file to user directory.'
cp files/home_user/DOTvimrc ${HOME}/.vimrc
chmod 644 ${HOME}/.vimrc

if [ ! -d ${HOME}/.vim ]
then
    echo 'INFO: Creating '${HOME}'/.vim since it does not exist.'
    mkdir ${HOME}/.vim
fi

echo 'INFO: Copying Vi IMproved files to user directory.'
cp -R files/home_user_DOTvim/* ${HOME}/.vim
chmod -R 755 ${HOME}/.vim

# CONKY
echo 'INFO: Copying Conky file to user directory.'
cp files/home_user/DOTconkyrc.novaspirit ${HOME}/.conkyrc
chmod 644 ${HOME}/.conkyrc

# EVOLUTION
#/usr/lib/evolution/evolution-backup --restore files/home_user/evolution-backup.tar.gz

# HOME CONFIGUATION FILES
echo 'INFO: Copying config directory files to user space.'
cp -R files/home_user_DOTconfig/* ${HOME}/.config

# PICTURES
echo 'INFO: Linking Desktop Environment Wallpaper files to user directory.'
ln -s /usr/share/backgrounds/* ${HOME}/Pictures

# LOG OUT
echo
echo "Automatic log out from system in 30 seconds."
echo "After log out, log into windows manager for post installation"
echo "modifications to take effect."
echo 
sleep 30
exit

