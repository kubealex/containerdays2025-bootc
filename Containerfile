FROM quay.io/centos-bootc/centos-bootc:stream9

RUN dnf -y group install GNOME && \
    dnf -y clean all && \
    systemctl set-default graphical.target && \
    echo "%wheel        ALL=(ALL)       NOPASSWD: ALL" > /etc/sudoers.d/wheel-sudo
