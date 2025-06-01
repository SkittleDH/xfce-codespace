FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  xfce4 xfce4-goodies \
  tightvncserver \
  wget curl net-tools \
  git python3 python3-pip \
  xterm \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/novnc/noVNC.git /opt/novnc && \
    git clone https://github.com/novnc/websockify /opt/novnc/utils/websockify && \
    ln -s /opt/novnc/vnc.html /opt/novnc/index.html

COPY postcreate.sh /postcreate.sh
RUN chmod +x /postcreate.sh
