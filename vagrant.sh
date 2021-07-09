# Trying to do one four loop for whole script as a test
#!/bin/bash

for i in 1 2 3 4 5; do 
  echo export DOCKER_BUILDKIT=1 && 
  docker buildx create --use --name=qemu && 
  docker buildx inspect --bootstrap && 
  vagrant up --provider=docker && 
  vagrant ssh  
done








