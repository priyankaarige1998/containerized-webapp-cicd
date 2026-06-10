# 🚀 Containerized Web Application with CI/CD (DevOps Project)

## 📌 Project Overview

This project demonstrates a complete **end-to-end DevOps CI/CD pipeline** for deploying a Flask web application using Docker, AWS, GitHub Actions, and Nginx.

The application is automatically built, containerized, pushed to AWS ECR, and deployed on an EC2 instance.

---

## 🏗️ Architecture

## Architecture Diagram

```mermaid
graph TD

A[Developer] --> B[GitHub Repository]

B --> C[GitHub Actions CI/CD]

C --> D[Docker Build Image]

D --> E[AWS ECR Repository]

E --> F[EC2 Instance]

F --> G[Docker Container - Flask App]

G --> H[Nginx Reverse Proxy :80]

H --> I[User Browser]


