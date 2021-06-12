# Julia Python Docker images

This repository is a CI only repository and meant to utilize Github actions in order to patch a specific Julia docker image and combine it with the Python image.

## Pulling a combined docker image

For instance if you need Python 3.8 and Julia 1.6, just run

```shell
PYTHON_VERSION=3.8
JULIA_VERSION=1.6

docker pull "docker.pkg.github.com/casabre/JuliaPython/julia/python${PYTHON_VERSION}:${JULIA_VERSION}"
```

## Supported versions

| Versions | 3.6                | 3.7                | 3.8                | 3.9                |
| -------- | ------------------ | ------------------ | ------------------ | ------------------ |
| 1.0      | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| 1.1      | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| 1.2      | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| 1.3      | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| 1.4      | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| 1.5      | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| 1.6      | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |

If you need more versions, please extend the [docker.yml](.github/workflows/docker.yml) file and create a pull request.
