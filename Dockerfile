FROM openjdk:17-jdk-slim

ENV TRACCAR_VERSION 5.13

WORKDIR /opt/traccar

RUN apt-get update && apt-get install -y wget unzip && \
    wget https://github.com/traccar/traccar/releases/download/v${TRACCAR_VERSION}/traccar-other-${TRACCAR_VERSION}.zip && \
    unzip traccar-other-${TRACCAR_VERSION}.zip && \
    rm traccar-other-${TRACCAR_VERSION}.zip

EXPOSE 8082

CMD ["./traccar.run"]
