# CICD-GitHubActions-locally-proj4
Docker Image URL:https://hub.docker.com/repository/docker/sandeepbikkana87/my-app/general


# CI/CD Pipeline with GitHub Actions & Docker

## Project Overview

This project demonstrates a **full CI/CD pipeline** using:

- **Docker** for containerization  
- **GitHub Actions** for automation  
- **Docker Hub** for image storage  
- **Minikube** or local VM for deployment  

The pipeline will **build**, **test**, and **deploy** your application automatically whenever you push code to the `main` branch.

---

## Project Structure

.
├── .github
│ └── workflows
│ └── docker-ci-cd.yml # GitHub Actions workflow
├── Dockerfile # Docker build file
├── docker-compose.yml # Optional for local deployment
├── requirements.txt # Python dependencies (if Python app)
├── app.py # Your application code
└── README.md

---

## Prerequisites

- Docker installed: [https://www.docker.com/get-started](https://www.docker.com/get-started)  
- GitHub account with a repository  
- Docker Hub account  
- (Optional) Minikube for local Kubernetes deployment: [https://minikube.sigs.k8s.io/docs/start/](https://minikube.sigs.k8s.io/docs/start/)  

---

## Setup GitHub Secrets

In your GitHub repository:

1. Go to **Settings → Secrets → Actions**  
2. Add:

| Name             | Value                       |
|-----------------|-----------------------------|
| `DOCKER_USERNAME` | Your Docker Hub username     |
| `DOCKER_PASSWORD` | Your Docker Hub password or token |

---

## Docker Commands

### Build Image

```bash
Pull Image from Docker Hub
docker pull <dockerhub-username>/my-app:latest

Run Container Locally
docker run -d -p 5000:5000 --name my-app <dockerhub-username>/my-app:latest

Minikube Deployment (Optional)

minikube start

# Deploy application
kubectl create deployment my-app --image=<dockerhub-username>/my-app:latest

# Expose deployment
kubectl expose deployment my-app --type=NodePort --port=5000

# Get Minikube URL
minikube service my-app --url
Access the URL in your browser to see the app running.

CI/CD Workflow
The GitHub Actions workflow (.github/workflows/docker-ci-cd.yml) will:

Build the Docker image

Run tests inside the container

Push the image to Docker Hub

(Optional) Deploy to Minikube for testing


