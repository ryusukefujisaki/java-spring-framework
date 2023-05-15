FROM tomcat:10.1.8-jre17

COPY ./java-spring-framework/target/java-spring-framework-0.0.1-SNAPSHOT.war \
     /usr/local/tomcat/webapps/java-spring-framework.war

CMD ["catalina.sh", "run"]
