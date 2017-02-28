FROM pritunl/archlinux:latest

ARG ARCHLIVE_DIR=/archlive

RUN pacman -S --noconfirm \
  archiso

RUN mkdir $ARCHLIVE_DIR

RUN cp -r /usr/share/archiso/configs/releng/* $ARCHLIVE_DIR

ADD root $ARCHLIVE_DIR
RUN $ARCHLIVE_DIR/generate

CMD /archlive/build.sh -v
