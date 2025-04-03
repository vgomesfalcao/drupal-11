# Makefile for managing Docker Compose

# Default target
.PHONY: up down restart logs build

# Start the Docker Compose services
up:
	sudo docker compose up -d

# Stop the Docker Compose services
down:
	sudo docker compose down

# Restart the Docker Compose services
restart: down up

# View logs of the Docker Compose services
logs:
	sudo docker compose logs -f

# Build or rebuild the Docker Compose services
build:
	sudo docker compose build
	sudo docker compose run -it php composer install