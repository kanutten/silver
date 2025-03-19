FROM ghcr.io/ublue-os/silverblue-main:gts

## Other possible base images include:
# FROM ghcr.io/ublue-os/bazzite:latest
# FROM ghcr.io/ublue-os/bluefin-nvidia:stable
# 
# ... and so on, here are more base images
# Universal Blue Images: https://github.com/orgs/ublue-os/packages
# Fedora base image: quay.io/fedora/fedora-bootc:41
# CentOS base images: quay.io/centos-bootc/centos-bootc:stream10

### MODIFICATIONS
## make modifications desired in your image and install packages by modifying the build.sh script
## the following RUN directive does all the things required to run "build.sh" as recommended.

COPY build.sh /tmp/build.sh
COPY system_files /
COPY scripts /scripts
#COPY --chmod=755 scripts /scripts

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    /scripts/just.sh && \
#    /scripts/karg.sh && \
#    /scripts/dconf.sh && \
#    /scripts/msfont.sh && \
    /scripts/install_packages.sh && \
    /scripts/cleanup.sh && \
    ostree container commit
    
