FROM ubuntu:16.04
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y \
            dbus \
            dbus-x11 \
            xorg \
            xserver-xorg-legacy \
            xinit \
            xterm \
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
            less \
            gawk \
            python3 \
            python3-pip \
            software-properties-common \
            apt-transport-https \
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

CMD [ "/usr/bin/startx", "--", "vt7" ]
