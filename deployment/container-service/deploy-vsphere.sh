#!/bin/bash

# VARIABLES
export BOSH_NAME="in-paasta-bosh"                          # bosh name (e.g. micro-bosh)
export IAAS="vsphere"                                      # IaaS (e.g. aws/azure/gcp/openstack/vsphere)
export DEPLOYMENT_NAME="container-service"                 # deployment name
export BOSH_UUID=`bosh int <(bosh -e ${BOSH_NAME} environment --json) --path=/Tables/0/Rows/0/uuid`

# DEPLOY
bosh -e ${BOSH_NAME} -n -d container-service deploy --no-redact container-service.yml \
    -l ${IAAS}-vars.yml \
    -o operations/iaas/${IAAS}/cloud-provider.yml \
    -o operations/iaas/${IAAS}/set-working-dir-no-rp.yml \
    -o operations/rename.yml \
    -o operations/misc/single-master.yml \
    -o operations/misc/first-time-deploy.yml \
    -v deployment_name=${DEPLOYMENT_NAME} \
    -v director_uuid=${BOSH_UUID} \


