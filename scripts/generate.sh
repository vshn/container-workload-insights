#!/bin/sh
mkdir -p output
openpipe run pipelines/stats/openshift_managed_processes.yaml ../pic/output/
openpipe run pipelines/stats/databases.yaml
openpipe run pipelines/stats/languages.yaml
openpipe run pipelines/stats/webservers.yaml
