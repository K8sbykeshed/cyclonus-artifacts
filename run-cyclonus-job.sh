#!/usr/bin/env bash

set -euo pipefail
set -xv

JOB_NAME=job.batch/cyclonus
JOB_NS=netpol
CLUSTER_NAME=$(kind get clusters)

docker pull mfenwick100/cyclonus:latest
kind load docker-image mfenwick100/cyclonus:latest --name "${CLUSTER_NAME}"
#
docker pull k8s.gcr.io/e2e-test-images/agnhost:2.28
kind load docker-image k8s.gcr.io/e2e-test-images/agnhost:2.28 --name "${CLUSTER_NAME}"

kind get clusters
kind export kubeconfig --name "${CLUSTER_NAME}"

# get some debug info
kubectl get nodes
kubectl get pods -A

# set up cyclonus
kubectl create ns "${JOB_NS}"

kubectl create clusterrolebinding cyclonus --clusterrole=cluster-admin --serviceaccount="${JOB_NS}":cyclonus

kubectl create sa cyclonus -n "${JOB_NS}"
kubectl create -f "${JOB_YAML}" -n "${JOB_NS}"

# wait for job to start running
# TODO there's got to be a better way to do this
sleep 30
kubectl get all -A

# 7200s - 2hours
kubectl wait --for=condition=complete job/cyclonus -n "${JOB_NS}" --timeout=7200s

mkdir -p downloads
kubectl logs -n "${JOB_NS}" "${JOB_NAME}" &> downloads/"${DIR_CNI}-$(date +%m-%d-%Y-%k_%M_%S)".log
