# 🚀 End-to-End DevOps CI/CD Project

## 📌 Project Title
Java WAR Application Deployment using Terraform, Docker, Jenkins, Kubernetes, and Helm

---

## 🎯 Project Objective

This project demonstrates a complete DevOps lifecycle implementation where:

- Infrastructure is provisioned using **Terraform**
- Application is containerized using **Docker**
- Continuous Integration & Deployment is automated using **Jenkins**
- Application is deployed using **Kubernetes**
- Package management is handled using **Helm**

The goal is to build a fully automated CI/CD pipeline for deploying a Java WAR-based application in a cloud environment.

---

# 🏗 Architecture Overview


Developer → Push Code to GitHub
↓
Jenkins Pipeline
↓
Docker Image Build
↓
Push Image to DockerHub
↓
Kubernetes Deploy (Minikube / K8s)
↓
Application Running on EC2


---

# 🛠 Tools Used & Why We Use Them

## 1️⃣ Terraform
### Purpose:
Terraform is used to provision infrastructure as code (IaC).

### Why?
- Automates EC2 creation
- Creates security groups
- Creates networking components
- Infrastructure becomes version controlled

👉 Instead of manually creating servers, we define infrastructure using code.

---

## 2️⃣ Docker
### Purpose:
Docker is used for containerizing the Java WAR application.

### Why?
- Ensures consistency across environments
- Runs application inside isolated containers
- Eliminates "It works on my machine" problem

Docker builds an image and runs it inside containers.

---

## 3️⃣ Jenkins
### Purpose:
Jenkins automates the CI/CD pipeline.

### Why?
- Automatically builds Docker image
- Pushes image to DockerHub
- Deploys application to Kubernetes
- Reduces manual deployment effort

Jenkins acts as the automation engine.

---

## 4️⃣ Kubernetes
### Purpose:
Kubernetes manages container orchestration.

### Why?
- Manages pods
- Handles scaling
- Auto-heals failed containers
- Manages networking

In this project we use:
- Minikube (local Kubernetes cluster)
- Or kubeadm-based cluster

---

## 5️⃣ Helm
### Purpose:
Helm is the package manager for Kubernetes.

### Why?
- Manages Kubernetes manifests as packages
- Simplifies deployment
- Enables version control for Kubernetes resources

Helm makes deployments reusable and scalable.

---

# 🔥 Project Flow (Step-by-Step Deployment Process)

## Step 1: Infrastructure Provisioning

Run Terraform:

```bash
terraform init
terraform plan
terraform apply

Terraform creates:

EC2 instance

Security Group

Required networking

Step 2: Install Required Tools on EC2

Inside EC2:

Install:

Docker

Jenkins

Kubernetes (Minikube)

kubectl

Helm

Give permissions:

sudo usermod -aG docker jenkins
Step 3: Configure Jenkins
Install Plugins:

Git Plugin

Docker Pipeline

Kubernetes CLI

Pipeline

Add Credentials:

Add DockerHub credentials in:

Manage Jenkins → Credentials
Step 4: Create Jenkins Pipeline

Create a pipeline job:

Pipeline from SCM

Link to GitHub repo

Use Jenkinsfile

Step 5: Jenkins Pipeline Execution

Pipeline stages:

Clone Repository

Build Docker Image

Push Image to DockerHub

Deploy to Kubernetes using kubectl / Helm

Step 6: Verify Deployment

Check running pods:

kubectl get pods

Check services:

kubectl get svc

Access application:

http://<EC2-Public-IP>:<NodePort>
📦 Project Structure
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
🚀 Key Benefits of This Project

✅ Fully automated deployment
✅ Infrastructure as Code
✅ Containerized application
✅ Scalable deployment
✅ Industry-standard DevOps workflow

💡 Future Improvements  For Better Optimization

Add GitHub Webhooks for automatic trigger

Use AWS EKS instead of Minikube

Add Prometheus & Grafana monitoring

Add SonarQube for code quality

Use AWS ECR instead of DockerHub

👨‍💻 Author

Project Developed For DevOps Learning & Portfolio Demonstration
