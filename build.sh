#!/bin/bash
# Custom builder script for Skaffold
# https://skaffold.dev/docs/pipeline-stages/builders/custom/
#

echo "image -- $IMAGE;"
DOCKER_STACK_COMMIT=1a66dd36ff821bcef814afe86dbc3dba8cd2198d
GPU_JUPYTER_COMMIT=3c350f0c933156edb49ebccb23142b890c232df6

# Generate jupyter docker image using nvidia docker for gpu support.
# Otherwise, Dockerfile_staroid would be enough.
git clone https://github.com/iot-salzburg/gpu-jupyter.git
cd gpu-jupyter
git checkout $GPU_JUPYTER_COMMIT

# generate Dockerfile
./generate-Dockerfile.sh -c ${DOCKER_STACK_COMMIT} -s --no-datascience-notebook --no-useful-packages
cd .build

# patch Dockerfile. Want to keep minimal jupyter on gpu
cat Dockerfile | awk '!p;/Dependency: jupyter\/scipy-notebook/{p=1}' > Dockerfile_minimal

# append staroid Dockerfile
cat ../../Dockerfile_staroid | grep -v ^FROM >> Dockerfile_minimal
cp ../../requirements.txt ./

# print Dockerfile
cat Dockerfile_minimal

# build
docker build -f Dockerfile_minimal -t $IMAGE .

if $PUSH_IMAGE; then
  docker push $IMAGE
fi
