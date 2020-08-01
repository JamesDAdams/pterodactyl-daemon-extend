FROM ccarney16/pterodactyl-daemon
CMD apt add zip
CMD apt add unzip
ENV PATH /srv/daemon/config:$PATH
ENV PATH /srv/daemon/packs:$PATH
ENV PATH /tmp/pterodactyl:$PATH
ENV PATH /etc/localtime:$PATH
ENV PATH /var/lib/docker:$PATH
ENV PATH /var/run/docker.sock:$PATH
ENV PATH /srv/daemon/data:$PATH
CMD echo "Build succes"
