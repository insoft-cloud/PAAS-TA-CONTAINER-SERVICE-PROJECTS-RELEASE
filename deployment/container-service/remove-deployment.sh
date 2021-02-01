#!/bin/bash

# SET VARIABLES
export CAAS_DEPLOYMENT_NAME='container-service'
export CAAS_BOSH2_NAME='in-paasta-bosh'

# DELETE DEPLOYMENT
bosh -e ${CAAS_BOSH2_NAME} -n delete-deployment -d ${CAAS_DEPLOYMENT_NAME} --force
