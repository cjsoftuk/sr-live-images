#! /bin/bash
set -e
apt-get install -y build-essential yasm libx264-dev libmp3lame-dev pkg-config libasound-dev
wget -q -O /tmp/ffmpeg.tar.bz2 http://ffmpeg.org/releases/ffmpeg-0.10.tar.bz2
pushd /tmp
tar -jxvf ffmpeg.tar.bz2
pushd ffmpeg-0.10
./configure --enable-gpl --enable-libx264 --enable-libmp3lame
make
make install
apt-get purge -y build-essential yasm libx264-dev libmp3lame-dev pkg-config libasound-dev
popd
