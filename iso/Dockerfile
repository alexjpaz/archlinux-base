FROM pritunl/archlinux:latest

ARG ARCHLIVE_DIR=/archlive

RUN pacman -S --noconfirm \
  archiso

RUN mkdir $ARCHLIVE_DIR

RUN cp -r /usr/share/archiso/configs/releng/* $ARCHLIVE_DIR

RUN pacman -Syy --noconfirm linux linux-headers
RUN pacman -S --noconfirm --needed base-devel

ADD airootfs $ARCHLIVE_DIR/airootfs

RUN $ARCHLIVE_DIR/airootfs/generate

CMD /archlive/build.sh -v
