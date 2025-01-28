
# Django Dockerized Application

This project demonstrates how to Dockerize a Django application and use Docker Compose to run the app along with its dependencies (PostgreSQL and Redis).

## Prerequisites

Before running the project, ensure you have the following installed:

- [Docker](https://www.docker.com/get-started) (including Docker Compose)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Getting Started

### 1. Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/Sydulamin/docker_assigment-01.git
cd your-repo-name
```

### 2. Build the Docker Image

To build the Docker image for the project, run the following command:

```bash
docker-compose build
```

### 3. Run the Docker Containers

Start the application with Docker Compose:

```bash
docker-compose up
```

This command will start the Django app, PostgreSQL, and Redis in separate containers. You can access the Django app at `http://localhost:8000/`.

### 4. Access the Application

- **Django App:** `http://localhost:8000/`
- **PostgreSQL Database:** `localhost:5432` (with credentials defined in the `docker-compose.yml` file)
- **Redis:** `localhost:6379`

### 5. Stop the Containers

To stop the containers, use the following command:

```bash
docker-compose down
```

## Docker Commands

### Build the Docker image

```bash
docker build -t my-app .
```

### Run the Docker container

```bash
docker run -d -p 8000:8000 --name django-app my-app
```

## Environment Variables

The following environment variables are used in the application:

- `DEBUG`: Set to `0` for production.
- `DATABASE_URL`: URL for the PostgreSQL database (`postgres://user:password@db:5432/mydatabase`).
- `REDIS_URL`: URL for the Redis service (`redis://redis:6379/0`).

## Troubleshooting

- If you encounter issues with Gunicorn not being found, ensure you have installed all dependencies correctly by running `pip install -r requirements.txt`.
- If the application doesn’t start, check if all services in `docker-compose.yml` are running.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
