FROM openjdk:8-alpine

RUN wget https://services.gradle.org/distributions/gradle-4.3-bin.zip

RUN mkdir /opt

RUN unzip gradle-4.3-bin.zip  -d /opt \
    && rm gradle-4.3-bin.zip

ENV GRADLE_HOME /opt/gradle-4.3
ENV PATH $PATH:/opt/gradle-4.3/bin

