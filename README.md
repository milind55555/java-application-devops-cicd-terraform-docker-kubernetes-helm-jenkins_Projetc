




🚀 End-to-End DevOps CI/CD Project
📌 Project Title

Java WAR Application Deployment using Terraform, Docker, Jenkins, Kubernetes, Helm & SonarQube

🎯 Project Objective

This project demonstrates a complete DevOps lifecycle implementation where:

Infrastructure is provisioned using Terraform

Code quality is analyzed using SonarQube

Application is containerized using Docker

CI/CD automation is handled using Jenkins

Application is deployed using Kubernetes

Package management is done using Helm

The goal is to build a fully automated and production-like CI/CD pipeline for deploying a Java WAR-based application.


# 🏗 Architecture Overview


<
<img width="975" height="650" alt="image" src="https://github.com/user-attachments/assets/3e6eede2-14d5-4898-8557-f071b87d0f01" />
<img width="1024" height="1536" alt="Architecture_Of_Devops_Project (2)" src="https://github.com/user-attachments/assets/232b0c3c-42c9-49af-ac84-127e0c08b883" />
Developer → Push Code to GitHub
        ↓
Jenkins Pipeline
        ↓
SonarQube Code Quality Analysis
        ↓
Docker Image Build
        ↓
Push Image to DockerHub
        ↓
Kubernetes Deployment (Minikube / EKS)
        ↓
Helm Deployment
        ↓
Application Running on EC2
🛠 Tools Used & Why We Use Them
1️⃣ Terraform
Purpose:

Infrastructure as Code (IaC)

Why?

Automates EC2 creation

Creates Security Groups

Configures networking

Infrastructure becomes version controlled

✅ Eliminates manual infrastructure setup

2️⃣ Docker
Purpose:

Containerize the Java WAR application

Why?

Ensures consistent environment

Runs application inside isolated containers

Solves “It works on my machine” problem

Docker builds an image and runs it inside containers.

3️⃣ Jenkins
Purpose:

Automates the CI/CD pipeline

Why?

Automatically triggers build

Runs SonarQube analysis

Builds Docker image

Pushes image to DockerHub

Deploys to Kubernetes

Jenkins acts as the automation engine of the project.

4️⃣ SonarQube ⭐ (Added for Code Quality)
Purpose:

Static code analysis and quality control

Why?

Detects bugs

Detects code smells

Identifies security vulnerabilities

Measures code coverage

Ensures maintainable code

Integration in Pipeline:

SonarQube stage runs before Docker build:

GitHub → Jenkins → SonarQube Analysis → Docker Build

Pipeline fails automatically if:

Code quality gates fail

Critical vulnerabilities are detected

✅ This makes your project enterprise-level.

5️⃣ Kubernetes
Purpose:

Container orchestration

Why?

Manages pods

Handles auto-healing

Supports scaling

Manages service networking

Used with:

Minikube (Local cluster)

Or EKS (Cloud production environment)

6️⃣ Helm
Purpose:

Kubernetes package manager

Why?

Packages Kubernetes manifests

Simplifies deployment

Enables version control

Supports rollback

Helm makes Kubernetes deployments reusable and professional.

📦 Project Output
✅ Application Running on Kubernetes Pods

(Deployment Verified)

✅ Pipeline Execution Successful

SonarQube Analysis Passed

Docker Image Built

Image Pushed to DockerHub

Application Deployed

✅ Application Dockerized Successfully
🔧 Setup Instructions
Step 1: Infrastructure Provisioning

Run Terraform:

terraform init
terraform plan
terraform apply

Terraform Creates:

EC2 Instance

Security Group

Required Networking

Step 2: Install Required Tools on EC2

Inside EC2 install:

Docker

Jenkins

Kubernetes (Minikube / Kubeadm / EKS)

kubectl

Helm

SonarQube (Docker Container or Separate Server)

Give Docker Permission:
sudo usermod -aG docker jenkins
Step 3: Configure Jenkins
Install Plugins:

Git Plugin

Docker Pipeline

Kubernetes CLI

Pipeline

SonarQube Scanner Plugin

Add Credentials:

Add:

DockerHub Credentials

SonarQube Token

Go to:

Manage Jenkins → Credentials
Step 4: Configure SonarQube

Install SonarQube (Docker recommended)

docker run -d --name sonarqube -p 9000:9000 sonarqube:lts-community

Access:

http://<EC2-Public-IP>:9000

Create Project

Generate Token

Add Token to Jenkins Credentials

Step 5: Jenkins Pipeline Execution

Pipeline Stages:

Clone Repository

SonarQube Code Analysis

Build Docker Image

Push Image to DockerHub

Deploy to Kubernetes

Deploy via Helm

Step 6: Verify Deployment

Check pods:

kubectl get pods

Check services:

kubectl get svc

Access Application:

http://<EC2-Public-IP>:<NodePort>
📂 Project Structure
java-war-devops-project/
│
├── app/
│   └── your-app.war
│
├── Dockerfile
├── Jenkinsfile
├── README.md
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── k8s/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── namespace.yaml
│
└── helm/
    └── java-app-chart/


Output Of Project
Application Deployed On Pods
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/7f8d32ea-72dd-436f-90e9-fdd68367fda8"  />
Pipeline runs successfully
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/6b0d3668-9739-4020-93f7-622c2407d045" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/dd848f6f-8cc8-4756-8a6a-0e171acd646c" />
Application Dockerized Successfully
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/e0f8bcaf-ebe4-43ad-afa9-d86748e7776b" />

<img width="975" height="548" alt="image" src="https://github.com/user-attachments/assets/6de1728b-b18c-40dc-a522-150f254a2ac6" />

<img width="975" height="548" alt="image" src="https://github.com/user-attachments/assets/9b0162e5-1ce1-4e2a-acd4-bb7c15da08dd" />

<img width="975" height="548" alt="image" src="https://github.com/user-attachments/assets/cc964499-2ed1-4955-826c-7b45af531080" />

<img width="975" height="548" alt="image" src="https://github.com/user-attachments/assets/8e0588d8-d49a-4da5-8f00-d54f101240d8" />

<img width="975" height="548" alt="image" src="https://github.com/user-attachments/assets/359355c0-7c56-4d5f-b5bc-00de9ca38b54" />











✅ Fully automated deployment
✅ Infrastructure as Code
✅ Containerized application
✅ Scalable deployment
✅ Industry-standard DevOps workflow

💡 Future Improvements  For Better Optimization

Add GitHub Webhooks for automatic trigger


Add Prometheus & Grafana monitoring

Add SonarQube for code quality



👨‍💻 Author

Project Developed For DevOps Learning & Portfolio Demonstration
