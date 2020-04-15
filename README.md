# Jupyter on Staroid ⭐️

[Jupyter](https://jupyter.org/) notebook on Staroid.

### [Click here to Launch on Staroid!](https://staroid.com/g/staroider/vscode)

## Branch

| Branch |  Jupyter image version|
| ------ | --------------- |
| Master | jupyter/minimal-notebook:latest       |

This project uses [pre-built docker images](https://github.com/jupyter/docker-stacks).

## Development

Run locally with [skaffold](https://skaffold.dev) command.

```
$ skaffold dev --port-forward
```

and browse `http://localhost:8888`
