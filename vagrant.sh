
## You will be using buildx as sort of a container in a container for workflow consistency (Not for Prod use)

echo export DOCKER_BUILDKIT=1 && docker buildx create --use --name=qemu && docker buildx inspect --bootstrap

## Finally run your Vagrant Commands and remmeber to specifiy Provider 

echo  vagrant up --provider=docker && vagrant ssh


