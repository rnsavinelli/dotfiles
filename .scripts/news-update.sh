#!/bin/sh

newsboat -x reload

articles=$(newsboat -x print-unread | awk '{print $1}')

if [ $articles -gt 0 ]; then
    notify-send "RSS feed update" "$articles unread articles"
fi
