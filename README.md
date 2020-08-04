# Jupyter on Staroid ⭐️

[Jupyter](https://jupyter.org/) notebook on Staroid.

 | <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/1200px-Jupyter_logo.svg.png" width="40px" style="margin-right: 20px"/> | <img src="https://dask.org/_images/dask_horizontal_white_no_pad.svg" width="100px" style="margin-right: 20px"> | <img src="https://upload.wikimedia.org/wikipedia/en/b/b9/Nvidia_CUDA_Logo.jpg" width="80px" style="margin-right: 20px"/> |
 | ---- | ----- | ------- |



## Features

 - Jupyter Lab
 - GPU support
 - [Dask](https://dask.org/) dynamic cluster (work in progress)
 - [MLflow server](https://github.com/open-datastudio/mlflow-server) integration
 - Persistent storage for `~/work`
  - Run on the cloud in a few clicks, no setup required!

[![Run](https://staroid.com/api/run/button.svg)](https://staroid.com/api/run)

## Articles

 - [How Open Data Studio Jupyter notebook connects MLflow server](https://medium.com/@leemoonsoo/how-open-data-studio-jupyter-notebook-connects-mlflow-server-e805929322ff?sk=86151b30f48d17a117b2554fd857e425) - step by step instruction how to use with Jupyter notebook and how it works underneath.


## Screenshots and video

 - Launch on GPU instance

   [![](https://user-images.githubusercontent.com/1540981/89314942-1f96b980-d62f-11ea-98e5-745bab3504a5.gif)](https://youtu.be/kT1JqzZpBOo)


## Development

Run locally with [skaffold](https://skaffold.dev) command.

```
$ skaffold dev --port-forward -p minikube
```

and browse `http://localhost:8888`

## Thanks

- Docker image is built based on https://github.com/jupyter/docker-stacks and https://github.com/iot-salzburg/gpu-jupyter