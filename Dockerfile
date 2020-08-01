FROM ccarney16/pterodactyl-daemon
CMD apt add zip
CMD apt add unzip
VOLUME /srv/daemon/config
CMD echo "Build succes"
