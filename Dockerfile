FROM tomcat:8.0.43-jre8
copy target/webapp*.war /usr/local/tomcat/webapps/
ADD server.xml /usr/local/tomcat/conf/
EXPOSE 9090
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
