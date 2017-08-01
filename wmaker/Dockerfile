FROM kunst1080/x11:latest
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

USER root

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
            wmaker \
            wmaker-data \
            wmaker-common \
            menu \
            x11-apps \
            desktop-base \
            rxvt-unicode \
            firefox \
            fcitx \
            fcitx-mozc \
            fonts-ipafont \
            im-config \
	&& rm -rf /var/lib/apt/lists/*

USER $USER
CMD [ "/usr/bin/startx" ]
