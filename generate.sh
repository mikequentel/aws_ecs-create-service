#!/bin/bash
CLUSTER=$1 # eg: deepdive
SERVICE_NAME=$2 # eg: web
TASK_DEFINITION=$3 # eg: web
DESIRED_COUNT=$4 # eg: 1

# Example usage:
# generate.sh deepdive web web 1

# aws ecs create-service --cluster deepdive --service-name web --task-definition web --desired-count 1
aws ecs create-service --cluster ${CLUSTER} --service-name ${SERVICE_NAME} --task-definition ${TASK_DEFINITION} --desired-count ${DESIRED_COUNT}

