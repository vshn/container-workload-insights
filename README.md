# container-workload-insights
Container workload insights generator


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