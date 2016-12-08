From hypriot/rpi-node

Run apt-get update -y && apt-get install unzip -y 

RUN wget http://ossrs.net/srs.release/releases/files/SRS-Ubuntu12-armv7cpu-1.0.30.zip && unzip SRS-Ubuntu12-armv7cpu-1.0.30.zip && cd SRS-Ubuntu12-armv7cpu-1.0.30 && ./INSTALL && rm /SRS-Ubuntu12-armv7cpu-1.0.30.zip && rm -rf /SRS-Ubuntu12-armv7cpu-1.0.30

WORKDIR /usr/local/srs
ADD ./rtmp.conf /srs-conf/rtmp.conf

ENTRYPOINT ["./objs/srs","-c"]
CMD ["/srs-conf/rtmp.conf"]
