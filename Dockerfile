FROM mono
LABEL maintainer "Vincent te Beek <vincent@cnflx.io>"
RUN apt-get update -qq && \
    apt-get install -qqy lib32gcc1 unzip mono-complete && \
    mkdir -p /opt/steamcmd && \
    mkdir -p /opt/steamcmd/steamapps/EcoServer/ && \
    cd /opt/steamcmd && \
    curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
EXPOSE 2999/udp 3000 3001
COPY ./startup.sh /opt/steamcmd/startup.sh
COPY ./overwrite-config.sh /opt/steamcmd/scripts/overwrite-config.sh
WORKDIR /opt/steamcmd
ENTRYPOINT ["/bin/bash"]

CMD ["startup.sh"]