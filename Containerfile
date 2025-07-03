FROM quay.io/centos-bootc/centos-bootc:stream9

RUN dnf -y group install GNOME && \
    dnf -y clean all && \
    systemctl set-default graphical.target && \
    echo "%wheel        ALL=(ALL)       NOPASSWD: ALL" > /etc/sudoers.d/wheel-sudo

COPY ./nginx.container /usr/share/containers/systemd/nginx.container
RUN ln -s /usr/share/containers/systemd/nginx.container /usr/lib/bootc/bound-images.d/nginx.container
