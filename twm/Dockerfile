FROM kunst1080/x11:latest
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

USER root

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
            menu \
            twm \
	&& rm -rf /var/lib/apt/lists/*

USER $USER
CMD [ "/usr/bin/startx" ]
