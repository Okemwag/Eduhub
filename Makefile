# Makefile for EduHub project

.PHONY: help install-client install-backend start-dev build-docker deploy-kubernetes

help:
	@echo "Available commands:"
	@echo "  make install-client   # Install frontend dependencies"
	@echo "  make install-backend    # Install backend dependencies"
	@echo "  make start-dev          # Start development servers"
	@echo "  make build-docker       # Build Docker image"
	@echo "  make deploy-kubernetes  # Deploy to Kubernetes"

install-frontend:
	cd client && npm install

install-backend:
	cd backend && pip install -r requirements.txt

start-dev:
	cd client && npm run dev &
	cd backend && python manage.py runserver &

build-docker:
	docker build -t your-docker-image-name .

deploy-kubernetes:
	kubectl apply -f kubernetes/deployment.yaml
	kubectl apply -f kubernetes/service.yaml
