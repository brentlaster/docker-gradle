FROM localhost:5000/openjdk:8-alpine

COPY gradle-dist/gradle-4.3-bin.zip .

RUN unzip gradle-4.3-bin.zip  -d /opt \
    && rm gradle-4.3-bin.zip

ENV GRADLE_HOME /opt/gradle-4.3
ENV PATH $PATH:/opt/gradle-4.3/bin

