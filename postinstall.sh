#!/bin/sh
# This file has been automatically generated by cygbuild
#
# Please do not remove section comments '#:<name>'

set -e

PATH=/bin:/sbin:/usr/bin:/usr/sbin
LC_ALL=C

dest=$1


#:etc
fromdir=/etc/defaults
for i in  etc/ etc/rsnapshot.conf
do
    from="$fromdir/$i"
    to="$dest/$i"

    [ -e "$from" ] || continue
    [ -e "$to"   ] && continue

    case "$i" in
        */) # Directory
            install -d -m 755 "$to"
            ;;
        *)  # File
            install -v -m 644 "$from" "$to"
            ;;
    esac
done

