#!/bin/bash

if [ ! -d "/downloader" ]; then
    echo "ERROR: /downloader directory not found"
    exit 1
fi

if [ ! -f "/downloader/uup_download_linux.sh" ]; then
    echo "ERROR: /downloader/uup_download_linux.sh not found. Make sure to mount the directory which contains 'uup_download_linux' to /downloader"
    exit 1
fi

cd /downloader
chmod +x uup_download_linux.sh

./uup_download_linux.sh
