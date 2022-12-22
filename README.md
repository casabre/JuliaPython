# Python Julia Docker images

This repository is a CI only repository and meant to utilize Github actions in order to patch a specific Julia Dockerfile and combine it with the requested Python image.

## Pulling a combined docker image

For instance if you need Python 3.8 and Julia 1.6, just run

```shell
PYTHON_VERSION=3.8
JULIA_VERSION=1.6

docker pull "docker.io/casabre/python-julia:${PYTHON_VERSION}-${JULIA_VERSION}"
```

## Supported versions

| Versions | 3.6                | 3.7                | 3.8                | 3.9                |
| -------- | ------------------ | ------------------ | ------------------ | ------------------ |
| 1.0      | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| 1.6      | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |

## Updating versions

If you need more versions, please check the accesibility of the [Julia Dockerfile](https://github.com/docker-library/julia/tree/6458311a816406d7b1eb6d37ae92a6e27e32028c) link and/or the Python image for that specific version and extend the [docker.yml](.github/workflows/docker.yml) file in the matrix section and finally update the [supported versions](#supported-versions) table, e.g.

```yml
...
jobs:
  push_to_registry:
    name: Push Docker image to GitHub Packages
    strategy:
      fail-fast: false
      matrix:        
        julia: ["1.0", 1.6, 1.x]
        python: [3.6, 3.7, 3.8, 3.9, 3.x]
...
```

In the end, please create a new pull request.
