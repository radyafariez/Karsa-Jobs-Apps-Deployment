# Build docker image
docker build -t karsajobs:latest .

# Rename docker image
docker tag karsajobs:latest radyafariez/karsajobs:latest

# Login to docker
echo $PASSWORD_DOCKER_HUB | docker login -u radyafariez --password-stdin

# Push image to Docker Hub
docker push radyafariez/karsajobs:latest