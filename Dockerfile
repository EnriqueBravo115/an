FROM archlinux:latest

ENV TERM xterm

RUN pacman -Sy --noconfirm \
 && pacman -Syu --noconfirm \
 && pacman -S --noconfirm base-devel vim git ansible \
 && pacman -Scc --noconfirm

RUN useradd -m -s /bin/bash nullboy \
 && echo "nullboy ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER nullboy
WORKDIR /home/nullboy
