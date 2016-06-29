FROM alpine:3.3
MAINTAINER Peter McConnell <me@petermcconnell.com>

RUN 	apk add --update \
		build-base python python-dev ctags make git libxpm-dev \
		libx11-dev libxt-dev ncurses-dev && \
	git clone https://github.com/vim/vim /tmp/vim && \
	cd /tmp/vim && \
	./configure \
		--with-features=huge \
		--enable-multibyte \
		--enable-pythoninterp \
		--with-python-config-dir=/usr/lib/python2.7/config \
		--disable-gui \
		--disable-netbeans \
		--prefix /usr && \
	make VIMRUNTIMEDIR=/usr/share/vim/vim74 && \
	make install && \
	rm -rf /var/cache/apk/*
CMD vim
