FROM dockerasr/nagios-base:2.0.0

# install tomcat7
ADD apache-tomcat-7.0.55.tar.gz /usr/local/src
ENV CATALINA_HOME /usr/local/src/apache-tomcat-7.0.55
ENV PATH=$PATH:$CATALINA_HOME/bin

#deploy the war
COPY ROOT.war $CATALINA_HOME/webapps/ROOT/ROOT.war
WORKDIR $CATALINA_HOME/webapps/ROOT
RUN jar xvf ROOT.war
RUN rm -rf ROOT.war

EXPOSE 8080

CMD ["/usr/local/src/apache-tomcat-7.0.55/bin/catalina.sh","run"]
