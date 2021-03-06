FROM ubuntu:20.04
ENV TZ=Europe/Warsaw
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN set -ex; \
    apt-get update; \
    apt-get install -y \
      bash \
      icewm \
      nano \
      neofetch \
      net-tools \
      novnc \
      supervisor \
      x11vnc \
      xterm \
      xvfb

ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=600

COPY . /os
CMD ["/os/entrypoint.sh"]
EXPOSE 8080
