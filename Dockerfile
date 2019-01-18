FROM picoded/ubuntu-openjdk-8-jdk

MAINTAINER Christopher Blackwell <christopher.blackwell@furman.edu>

RUN \
  curl -L -o sbt-1.2.8.deb http://dl.bintray.com/sbt/debian/sbt-1.2.8.deb && \
  dpkg -i sbt-1.2.8.deb && \
  rm sbt-1.2.8.deb && \
  apt-get update && \
  apt-get install sbt && \
  sbt sbtVersion &&\
  apt-get install -y sfst && \
  dpkg --listfiles sfst

ENV SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Xss2M"

CMD sbt console

