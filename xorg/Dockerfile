FROM buildpack-deps:xenial
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
        && apt-get install -y --no-install-recommends sudo vim xorg xinit xterm \
	&& rm -rf /var/lib/apt/lists/*

CMD [ "/usr/bin/startx" ]
