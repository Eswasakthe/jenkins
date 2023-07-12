FROM centos


RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -o https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.11/bin/apache-tomcat-10.1.11.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-10.1.11/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/Eswasakthe/maven-project/raw/master/target/funds-1.0-SNAPSHOT.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
