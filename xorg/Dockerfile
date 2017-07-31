FROM buildpack-deps:xenial
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

ENV USER user

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
            sudo vim xorg xserver-xorg-legacy xinit xterm \
	&& rm -rf /var/lib/apt/lists/*

RUN sed -i "s/allowed_users=console/allowed_users=anybody/;$ a needs_root_rights=yes" /etc/X11/Xwrapper.config

RUN useradd ${USER} -m -G sudo -s /bin/bash && echo $USER:$USER | chpasswd

USER $USER
WORKDIR /home/$USER
CMD [ "/usr/bin/startx" ]
