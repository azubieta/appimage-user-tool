FROM archlinux/base

RUN pacman --noconfirm -Sy base-devel git cmake wget vim desktop-file-utils cairo fuse boost qt5-base qt5-xmlpatterns attica libappimage

RUN useradd build
USER build

WORKDIR /tmp
VOLUME  ["/sources"]