# Containerized Flask App with CI/CD on AWS

## Project Overview

This project demonstrates a DevOps CI/CD workflow for deploying a Python Flask application using Docker, GitHub Actions, AWS ECR, AWS EC2, and Nginx.

The Flask application is containerized using Docker, the image is pushed to AWS ECR, and the container is deployed on an EC2 Ubuntu server. Nginx is configured as a reverse proxy so the application is accessible on port 80.

---

## Architecture

```mermaid
graph TD
A[Developer] --> B[GitHub Repository]
B --> C[GitHub Actions]
C --> D[Docker Image Build]
D --> E[AWS ECR]
E --> F[EC2 Ubuntu Server]
F --> G[Docker Container]
G --> H[Flask Application on Port 5000]
I[User Browser] --> J[Nginx on Port 80]
J --> H
