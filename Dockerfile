FROM archlinux:latest

ENV TERM xterm

RUN pacman -Sy --noconfirm \
 && pacman -Syu --noconfirm \
 && pacman -S --noconfirm base-devel vim git ansible \
 && pacman -Scc --noconfirm
