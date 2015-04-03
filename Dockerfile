FROM centos:centos6
MAINTAINER Jeff Rush <jrush@zeomega.com>

ENV VERSION         7u75
ENV ORACLE_ARCHIVE  http://download.oracle.com/otn-pub/java/jdk/${VERSION}-b13
ENV RPMNAME         jdk-${VERSION}-linux-x64.rpm
ENV JAVA_HOME       /home/java/default

RUN yum update -y							\
 && yum install -y wget
#  && rm -rf /var/lib/apt/lists/*

RUN wget --no-check-certificate --no-cookies				\
         --header "Cookie: oraclelicense=accept-securebackup-cookie"	\
         ${ORACLE_ARCHIVE}/${RPMNAME}

RUN rpm -ivh ${RPMNAME}							\
 && rm       ${RPMNAME}
