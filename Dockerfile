FROM dejankovacevic/bots.runtime:2.10.3

COPY target/recording.jar   /opt/recording/recording.jar
COPY recording.yaml         /etc/recording/recording.yaml

RUN mkdir /opt/recording/images
RUN mkdir /opt/recording/avatars
RUN mkdir /opt/recording/pdf
RUN mkdir /opt/recording/html

WORKDIR /opt/recording
     
EXPOSE  8080 8081 8082
