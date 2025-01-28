
`docker build -t my-django-app:latest .`  
**Purpose**: Builds a Docker image for the Django application.

`docker run -d -p 8000:8000 --name django-app my-django-app`  
**Purpose**: Runs the Django application container on port 8000.

`docker push my-dockerhub/my-django-app:latest`  
**Purpose**: Uploads the image to Docker Hub for sharing or deployment.
