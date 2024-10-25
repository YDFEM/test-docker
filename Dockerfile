FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install necessary system packages, including Python 3.10 and X11 libraries
RUN apt-get update && \
    apt-get -y install build-essential git cmake tcl tcl-dev tk tk-dev \
    libxmu-dev libxi-dev libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev \
    wget python3.10 python3.10-dev python3.10-venv python3-pip libfreetype6-dev \
    rapidjson-dev libpcre2-dev x11-xserver-utils \
    libxcb-xinerama0 libx11-xcb1 libfontconfig1 libxrender1 libxcb1 libxkbcommon-x11-0 \
    libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 \
    libxcb-shape0 libxcb-shm0 libxcb-sync1 libxcb-xfixes0 libxcb-xkb1 \
    libglu1-mesa x11-apps


# Symlink Python 3.10 to default 'python' command
RUN ln -s /usr/bin/python3.10 /usr/bin/python