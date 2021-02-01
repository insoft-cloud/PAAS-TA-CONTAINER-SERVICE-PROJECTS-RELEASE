#!/bin/bash

# SET VARIABLES
export CAAS_BOSH2_NAME='in-paasta-bosh'

# UPLOAD RELEASES
bosh -e ${CAAS_BOSH2_NAME} upload-release ../../../release/service/cfcr-etcd-release-1.12.4.tgz
bosh -e ${CAAS_BOSH2_NAME} upload-release ../../../release/service/docker-35.2.1.tgz
bosh -e ${CAAS_BOSH2_NAME} upload-release ../../../release/service/bosh-dns-release-1.12.0.tgz
bosh -e ${CAAS_BOSH2_NAME} upload-release ../../../release/service/bpm-release-1.0.4.tgz
bosh -e ${CAAS_BOSH2_NAME} upload-release ../../../release/service/kubo-release-0.34.1.tgz
bosh -e ${CAAS_BOSH2_NAME} upload-release ../../../release/service/paasta-container-service-projects-release.tgz
bosh -e ${CAAS_BOSH2_NAME} releases
