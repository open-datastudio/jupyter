# Jupyter on Staroid ⭐️

[Jupyter](https://jupyter.org/) notebook on Staroid.

Features

 - Jupyter Lab
 - Persistent storage for `~/work`
 - Connect to [MLFlow server](https://github.com/open-datastudio/mlflow-server)
 - Kubernetes support
 - Run on the cloud in a few clicks

[![Run](https://staroid.com/api/run/button.svg)](https://staroid.com/api/run)

## Articles

 - [How Open Data Studio Jupyter notebook connects MLflow server](https://medium.com/@leemoonsoo/how-open-data-studio-jupyter-notebook-connects-mlflow-server-e805929322ff?sk=86151b30f48d17a117b2554fd857e425) - step by step instruction how to use with Jupyter notebook and how it works underneath.


## Branch

| Branch |  Jupyter image version|
| ------ | --------------- |
| Master | jupyter/minimal-notebook:latest       |

This project uses [pre-built docker images](https://github.com/jupyter/docker-stacks).

## Development

Run locally with [skaffold](https://skaffold.dev) command.

```
$ skaffold dev --port-forward -p minikube
```

and browse `http://localhost:8888`
