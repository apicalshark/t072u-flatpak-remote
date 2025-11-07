#! /bin/sh

rm -rf build export .flatpak-builder &&
flatpak-builder build dev.eden_emu.eden.json &&
flatpak build-export export build &&
exec flatpak build-bundle export eden.flatpak dev.eden_emu.eden --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo
