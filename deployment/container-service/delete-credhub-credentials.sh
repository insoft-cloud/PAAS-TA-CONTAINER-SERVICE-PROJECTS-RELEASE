#!/bin/bash

# print delete deployment name

export d_name='container-service'
export CAAS_BOSH2_NAME='in-paasta-bosh'
echo "delete deployment name :: ["container-service"]"

credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-kubernetes-dashboard
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/kubernetes-dashboard-ca
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-metrics-server
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-etcdctl-flanneld
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-etcdctl-root
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-etcdctl-v0-29-0
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-etcd-v0-29-0
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/etcd_ca
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-kube-controller-manager
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/service-account-key
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-kubernetes
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-kubelet-client
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-kubelet
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/kubo_ca
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/etcd_user_flanneld_password
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/etcd_user_root_password
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/kube-scheduler-password
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/kube-controller-manager-password
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/kube-proxy-password
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/kubelet-drain-password
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/kubelet-password
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/kubo-admin-password
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-influxdb
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-heapster
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-etcdctl
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-etcd-v0-17-0
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-docke
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/tls-docker
credhub d -n /${CAAS_BOSH2_NAME}/${d_name}/route-sync-password

#credhub find

