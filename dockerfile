
FROM python:3.13.1-slim AS builder
WORKDIR /app

RUN apt-get update && apt-get install -y gcc

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

FROM python:3.13.1-slim
WORKDIR /app

RUN useradd -m django_user
USER django_user

COPY --from=builder /app /app
COPY . .

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "myproject.wsgi:application"]
