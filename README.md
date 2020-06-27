# Jupyter on Staroid ⭐️

[Jupyter](https://jupyter.org/) notebook on Staroid.

Features

 - Jupyter Lab
 - Persistent storage for `~/work`
 - Kubernetes support
 - Run on the cloud in a few clicks

[![Run](https://staroid.com/api/run/button.svg)](https://staroid.com/api/run)


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
