FROM tomcat:10.1-jdk17

# Télécharge l'agent APM Java
ENV APM_VERSION=1.43.0
RUN apt-get update && apt-get install -y curl && \
    curl -L -o /elastic-apm-agent.jar https://search.maven.org/remotecontent?filepath=co/elastic/apm/elastic-apm-agent/${APM_VERSION}/elastic-apm-agent-${APM_VERSION}.jar

# Copie du .war dans le dossier webapps
COPY tasksManagement-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/

# Injecte l'agent au démarrage
ENV CATALINA_OPTS="-javaagent:/elastic-apm-agent.jar \
  -Delastic.apm.service_name=taskManagement-api \
  -Delastic.apm.server_urls=http://apm-server:8200 \
  -Delastic.apm.application_packages=com.tasksManagement \
  -Delastic.apm.environment=dev"

EXPOSE 8080
