FROM amazonlinux


RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.11/bin/apache-tomcat-10.1.11.tar.gz
RUN yum -y install tar
RUN yum -y install java-1.8.0-openjdk
RUN java -version
