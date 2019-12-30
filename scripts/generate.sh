#!/bin/sh
openpipe run pipelines/stats/databases.yaml
openpipe run pipelines/stats/languages.yaml
openpipe run pipelines/stats/webservers.yaml
