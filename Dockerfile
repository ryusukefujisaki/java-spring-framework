FROM tomcat:10.1.8-jre17

COPY ./java-spring-framework/target webapps/

COPY ./server.xml /usr/local/tomcat/conf

CMD ["catalina.sh", "run"]
