FROM tomcat:8-jre11
RUN  rm -rf /usr/local/tomcat/webapps/*
COPY /target/Calculator-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/

EXPOSE 8080
ENTRYPOINT ["java", "-jar","Calculator-1.0-SNAPSHOT.jar"]
