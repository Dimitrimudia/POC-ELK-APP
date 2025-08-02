#!/bin/bash

AGENT_PATH="elastic-apm/elastic-apm-agent.jar"

java -javaagent:$AGENT_PATH \
  -Delastic.apm.service_name=taskManagement-api \
  -Delastic.apm.server_urls=http://localhost:8200 \
  -Delastic.apm.application_packages=com.example.tasksManagement \
  -Delastic.apm.environment=dev \
  -jar target/tasksManagement-0.0.1-SNAPSHOT.war

