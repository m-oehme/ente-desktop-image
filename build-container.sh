#!/bin/sh

echo "Version to pull $VERSION"

wget https://github.com/ente-io/photos-desktop/releases/download/$VERSION/latest-linux.yml
FILENAME=$(yq -r '.files[] | select(.url | contains(".deb")).url' latest-linux.yml)
echo "filename=$FILENAME" >> $GITHUB_OUTPUT
