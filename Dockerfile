FROM steamcmd/steamcmd

WORKDIR /opt/pzserver

ENV PATH=$PATH:/usr/games

COPY ./update_zomboid.txt /server/update_zomboid.txt
RUN steamcmd +runscript /server/update_zomboid.txt

EXPOSE 8766/udp
EXPOSE 16261/udp

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/opt/pzserver/start-server.sh"]
