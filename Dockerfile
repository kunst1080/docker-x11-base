FROM ubuntu:16.04
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

ENV USER user

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y \
            dbus \
            dbus-x11 \
            xorg \
            xserver-xorg-legacy \
            xinit \
            xterm \
            virtualbox-guest-x11 \
            usbutils \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y \
            sudo \
            curl \
            wget \
            git \
            openssh-client \
            unzip \
            vim \
            zsh \
            less \
            tmux \
            gawk \
            python3 \
            python3-pip \
            imagemagick \
            apt-file \
            apt-utils \
            autoconf \
            automake \
            bzip2 \
            file \
            build-essential \
            g++ \
            gcc \
            patch \
            xz-utils \
	&& rm -rf /var/lib/apt/lists/*

RUN sed -i "s/allowed_users=console/allowed_users=anybody/;$ a needs_root_rights=yes" /etc/X11/Xwrapper.config

RUN useradd ${USER} -m -G sudo -s /bin/bash && echo $USER:$USER | chpasswd

USER $USER
WORKDIR /home/$USER
CMD [ "/usr/bin/startx" ]
