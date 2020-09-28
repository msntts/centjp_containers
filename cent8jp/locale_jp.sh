#!/bin/bash

localectl | grep ja_JP.utf8 >> /dev/null

if [ $? -ne 0 ] && [ -e /usr/lib/locale/ja_JP.utf8 ]; then
    localedef --add-to-archive /usr/lib/locale/ja_JP.utf8
    localectl set-locale LANG=ja_JP.utf8
    source /etc/locale.conf
fi

