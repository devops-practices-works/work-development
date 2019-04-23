FROM tomcat:8.0.43-jre8
copy single-module/target/single-module-project.jar /usr/local/tomcat/webapps/
EXPOSE 9090
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
