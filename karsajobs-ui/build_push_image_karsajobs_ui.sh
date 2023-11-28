# Build docker image
docker build -t karsajobs-ui:latest .

# Rename docker image
docker tag karsajobs-ui:latest radyafariez/karsajobs-ui:latest

# Login to docker
echo $PASSWORD_DOCKER_HUB | docker login -u radyafariez --password-stdin

# Push image to Docker Hub
docker push radyafariez/karsajobs-ui:latest