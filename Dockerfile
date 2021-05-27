FROM cm2network/steamcmd

ENV MAP="TheIsland"
ENV SESSIONNAME="mySession"
ENV SERVERPASSWORD=""
ENV SERVERADMINPASSWORD=""

RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/steamcmd/ark +app_update 376030 +quit

#ENTRYPOINT /home/steam/steamcmd/ark/ShooterGame/Binaries/Linux/ShooterGameServer/ShooterGameServer

#CMD "${MAP}?listen?SessionName=${SESSIONNAME}?ServerPassword=${SERVERPASSWORD}?ServerAdminPassword=${SERVERADMINPASSWORD} -server -log"

CMD /home/steam/steamcmd/ark/ShooterGame/Binaries/Linux/ShooterGameServer/ShooterGameServer ${MAP}?listen?SessionName=${SESSIONNAME}?ServerPassword=${SERVERPASSWORD}?ServerAdminPassword=${SERVERADMINPASSWORD} -server -log
