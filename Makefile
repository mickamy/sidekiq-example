.PHONY: \
	up \
	up-d \
	down \
	down-v \
	build \
	install \
	help \

up: down ## Start the Docker containers
	docker compose up

up-d: down ## Start the Docker containers in detached mode
	docker compose up -d

down: ## Stop the Docker containers
	docker compose down

down-v: ## Stop the Docker containers and remove volumes
	docker compose down -v

build: ## Build the Docker images
	docker compose build

install: ## Install dependencies
	bundle install

help: ## Display this help message
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
