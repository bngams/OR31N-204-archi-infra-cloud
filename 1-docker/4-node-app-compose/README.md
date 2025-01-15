# PROJECT

Sample nodejs containerized app
(with some env var sample, docker context for build...)
 

# BUILD

/!\ context (ops/docker subfolder)
docker build -t my-node-app:0.1 -f ops/docker/Dockerfile .


# RUN

Run sample
docker run -p 8080:80 --name my-node-app  my-node-app:0.1

Run sample with compose
docker compose -f ops/docker/compose.yml up -d
