#!/usr/bin/env bash

################################################################################
# WORKSTATION INSTALLATION (DEBIAN 10 x64)                                     #
################################################################################

# Login: user
# Password: generic
# sudo su - root
# Launch script as user 'root'

# UPDATE SOFTWARE DATABASE AND PACKAGES
apt-get update --yes --fix-missing
apt-get upgrade --yes --no-install-recommends

# DISPLAY MANAGER (DM)
# GDM
apt-get install --no-install-recommends --yes \
    gdm3
apt-get clean all
apt-get autoremove --yes

# GNOME DESKTOP AND EXTENSIONS
apt-get install --no-install-recommends --yes \
    gnome \
    gnome-shell-extension-appindicator \
    gnome-shell-extension-autohidetopbar \
    gnome-shell-extension-caffeine \
    gnome-shell-extension-dash-to-panel \
    gnome-shell-extension-dashtodock \
    gnome-shell-extension-desktop-icons \
    gnome-shell-extension-disconnect-wifi \
    gnome-shell-extension-easyscreencast \
    gnome-shell-extension-hard-disk-led \
    gnome-shell-extension-hide-activities \
    gnome-shell-extension-hide-veth \
    gnome-shell-extension-impatience \
    gnome-shell-extension-kimpanel \
    gnome-shell-extension-log-out-button \
    gnome-shell-extension-mediaplayer \
    gnome-shell-extension-move-clock \
    gnome-shell-extension-multi-monitors \
    gnome-shell-extension-no-annoyance \
    gnome-shell-extension-onboard \
    gnome-shell-extension-pixelsaver \
    gnome-shell-extension-redshift \
    gnome-shell-extension-remove-dropdown-arrows \
    gnome-shell-extension-shortcuts \
    gnome-shell-extension-show-ip \
    gnome-shell-extension-suspend-button \
    gnome-shell-extension-system-monitor \
    gnome-shell-extension-tilix-dropdown \
    gnome-shell-extension-tilix-shortcut \
    gnome-shell-extension-top-icons-plus \
    gnome-shell-extension-trash \
    gnome-shell-extension-weather \
    gnome-shell-extension-workspaces-to-dock \
    gnome-shell-extensions \
    gnome-shell-extensions-gpaste
apt-get clean all
apt-get autoremove --yes

# GNOME COMMUNICATION CLIENTS
apt-get install --no-install-recommends --yes \
    empathy \
    empathy-skype \
    evolution \
    evolution-plugins \
    evolution-rss \
    telepathy-idle
apt-get clean all
apt-get autoremove --yes

apt-get install --no-install-recommends --yes \
    conky \
    conky-all
apt-get clean all
apt-get autoremove --yes

# DESKTOP TERMINALS
apt-get install --no-install-recommends --yes \
    konsole \
    lxterminal
apt-get clean all
apt-get autoremove --yes

# DESKTOP SOFTWARE
apt-get install --no-install-recommends --yes \
    alacarte \
    blueman \
    clamtk \
    clamtk-gnome \
    epiphany-browser \
    firefox-esr \
    gimp \
    gnome-calculator \
    gnome-photos \
    inkscape \
    hunspell-en-us \
    hyphen-en-us \
    libreoffice \
    menulibre \
    mousepad \
    mythes-en-us \
    planner \
    shotwell \
    vinagre \
    vym \
    wicd
apt-get clean all
apt-get autoremove --yes

# DESKTOP MEDIA
apt-get install --no-install-recommends --yes \
    audacious \
    audacious-plugins \
    brasero \
    cheese \
    rhythmbox \
    vlc \
    vlc-plugin*
apt-get clean all
apt-get autoremove --yes

# DESKTOP ENGINEERING AND DESIGN
apt-get install --no-install-recommends --yes \
    dia \
    dia-rib-network \
    dia-shapes \
    dia2code \
    gparted \
    fwbuilder \
    wireshark
apt-get clean all
apt-get autoremove --yes

# DESKTOP SOFTWARE DEVELOPMENT APT-GET
apt-get install --no-install-recommends --yes \
    bluefish \
    bluefish-plugins \
    geany \
    geany-plugins \
    meld
    geany-plugins
apt-get clean all
apt-get autoremove --yes

# DESKTOP GAMES
apt-get install --no-install-recommends --yes \
    frozen-bubble \
    pingus \
    tagua \
    toppler \
    wesnoth \
    xboard
apt-get clean all
apt-get autoremove --yes

# CLI TOOLS
apt-get install --no-install-recommends --yes \
    dnsutils \
    git \
    htop \
    iftop \
    net-tools \
    nmap \
    sshfs \
    sshpass \
    sshuttle \
    tcpdump \
    vim \
    zram-tools
apt-get clean all
apt-get autoremove --yes

# FILESYSTEMS IN USERSPACE (FUSE)
apt-get install --no-install-recommends --yes \
    exfat-fuse \
    fuse-zip \
    fuse2fs \
    fuseext2 \
    fusefat \
    fuseiso \
    fuseiso9660 \
    fusesmb \
    zfs-fuse
apt-get clean all
apt-get autoremove --yes

# TRUETYPE FONTS
apt-get install --no-install-recommends --yes \
    fonts-dustin \
    fonts-freefont-ttf \
    fonts-georgewilliams \
    fonts-hack-ttf \
    fonts-liberation2 \
    fonts-opensymbol \
    fonts-tuffy \
    ttf-adf-accanthis \
    ttf-adf-baskervald \
    ttf-adf-berenis \
    ttf-adf-gillius \
    ttf-adf-ikarius \
    ttf-adf-irianis \
    ttf-adf-libris \
    ttf-adf-mekanus \
    ttf-adf-oldania \
    ttf-adf-romande \
    ttf-adf-switzera \
    ttf-adf-tribun \
    ttf-adf-universalis \
    ttf-adf-verana \
    ttf-aenigma \
    ttf-bitstream-vera \
    ttf-mscorefonts-installer \
    ttf-staypuft \
    ttf-summersby \
    ttf-unifont \
    ttf-xfree86-nonfree
apt-get clean all
apt-get autoremove --yes

# PYTHON 3 DEVELOPMENT STUFF
apt-get install --no-install-recommends --yes \
    g++ \
    graphviz \
    libpcre3-dev \
    python3-dev \
    python3-pip \
    virtualenv
apt-get clean all
apt-get autoremove --yes

# GEANY ENVIRONMENT
cp files/usr_share_geany_colorschemes/* /usr/share/geany/colorschemes
chmod 644 /usr/share/geany/colorschemes/*
chown root:root /usr/share/geany/colorschemes/*

# INSTALL PYCHARM DEPENDENCY
apt-get install --no-install-recommends --yes \
    libcanberra-gtk-module
apt-get clean all
apt-get autoremove --yes

# INSTALL ADOBE FLASH
cp files/usr_lib_mozilla_plugins/libflashplayer.so /usr/lib/mozilla/plugins
chmod 644 /usr/lib/mozilla/plugins/libflashplayer.so
chown root:root /usr/lib/mozilla/plugins/libflashplayer.so

# INSTALL zram.sh
cp files/usr_bin/zram.sh /usr/bin/zram.sh
chmod 755 /usr/bin/zram.sh
chown root:root /usr/bin/zram.sh

# INSTALL zram.service
cp files/lib_systemd_system/zram.service /lib/systemd/system/zram.service
chmod 644 /lib/systemd/system/zram.service
chown root:root /lib/systemd/system/zram.service

systemctl enable zram.service
systemctl start zram.service

# MODIFY SYSTEM FILES
cat files/etc/hosts >> /etc/hosts
cat files/etc/motd > /etc/motd

cp files/etc/resolv.conf.google /etc
cp files/etc/resolv.conf.opendns /etc
cp files/etc/resolv.conf.ultradns /etc
chmod 644 /etc/resolv.conf.*
chown root:root /etc/resolv.conf.*

# BACKGROUND PICTURES
cp files/usr_share_backgrounds/* /home/user/Pictures
chmod 644 /home/user/Pictures/*
chown user:user /home/user/Pictures/*

# CHANGE PASSWORDS
#echo -e "debian\ndebian" | passwd root

# RESTART SYSTEM
shutdown -r now
