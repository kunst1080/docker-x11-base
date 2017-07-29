FROM kunst1080/x11:latest
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

USER root

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
            menu \
            twm \
	&& rm -rf /var/lib/apt/lists/*

USER $USER
RUN echo "twm & xclock -geometry 50x50-1+1 & xterm -geometry 80x50+494+51 & xterm -geometry 80x20+494-0 & exec xterm -geometry 80x66+0+0 -name login" >> .xinitrc
CMD [ "/usr/bin/startx" ]
