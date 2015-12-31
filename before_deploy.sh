#! /bin/sh

FFMPEG_VERSION=$(./ijkplayer/init-ios.sh ffmpeg-version)
ruby tools/make_deploy_file.rb $FFMPEG_VERSION > travis.bintray.deploy
