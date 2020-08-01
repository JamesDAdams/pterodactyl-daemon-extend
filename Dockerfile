FROM ccarney16/pterodactyl-daemon
CMD apt add zip
CMD apt add unzip
VOLUME /config
CMD echo "Build succes"
