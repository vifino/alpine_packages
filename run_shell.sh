#!/bin/sh

# Source vars
source vars

# Add my own repo.
echo http://repo.i0i0.me/alpine/edge >> /etc/apk/repositories

# Add the repo key.
cp /repo/adinator1999@gmail.com-5675c1f0.rsa.pub /etc/apk/keys/adinator1999@gmail.com-5675c1f0.rsa.pub

# Install deps
apk update
apk add alpine-sdk

# Add builder user.
(echo && echo) | adduser -h /repo -s /bin/sh -G abuild abuilder

# Chown the dirs and files
chown -R abuilder edge packages
chown abuilder /repo/adinator1999@gmail.com-5675c1f0.rsa /repo/adinator1999@gmail.com-5675c1f0.rsa.pub

# Switch to builder
su - abuilder
