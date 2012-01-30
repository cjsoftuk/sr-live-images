#! /usr/bin/make -f

all: image

image:
	lb config -b net --net-root-path "/srv/thin-clients/sr-video-live" --net-root-server "172.30.2.2" -m "http://cdn.debian.net/debian/" -a i386 -d squeeze
	lb build
