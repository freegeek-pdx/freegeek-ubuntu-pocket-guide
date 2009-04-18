#!/bin/sh

VER=$2
TAR=$3
PKG=$(dpkg-parsechangelog | awk '/^Source: /{print $2}')

TAR=$(readlink -f $3)

D=$(mktemp -d)
cd $D
mkdir ${PKG}_$VER.orig
cd ${PKG}_$VER.orig
tar xzf $TAR
cd ..
tar czf tar.tgz ${PKG}_$VER.orig
mv tar.tgz $TAR
cd /
rm -fr $D
