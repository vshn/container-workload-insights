# Container workload insights generator


This project provides a set of scripts that can be used to generate
insights about the workload running in a Kubernetes cluster.

The data required to produce the insights must be collected using the [process-info-collector](https://github.com/vshn/process-info-collector) tool.

## Generate pages
```
openpipe run pipelines/stats/openshift_managed_processes.yaml ../appuio-workload-insights/pic/output/
scripts/generate.sh
```

## Docker build

```sh
docker build -t container-workload-insights .
```

## Docker run

```sh
docker run \
    -dit \
    --name container-workload-insights \
    -p 8080:80 \
    container-workload-insights
````
