#!/bin/bash

AGENT_PATH="elastic-apm/elastic-apm-agent.jar"

java -javaagent:$AGENT_PATH \
  -Delastic.apm.service_name=task-api \
  -Delastic.apm.server_urls=http://localhost:8200 \
  -Delastic.apm.application_packages=com.example.tasksManagement \
  -Delastic.apm.environment=dev \
  -jar target/task-api-0.0.1-SNAPSHOT.jar
