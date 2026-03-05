pipeline {
    agent any

    tools {
        sonarRunner 'SonarQube Scanner' // Correct tool name
    }

    environment {
        DOCKER_IMAGE = "milind1122/java_applicationdevopsproject"
        DOCKER_TAG = "${BUILD_NUMBER}"
        REGION = "ap-south-1"
        CLUSTER_NAME = "java-eks-cluster"
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('SonarQube Analysis') {
            steps {
                script {
                    // Running SonarQube analysis using the tool configuration
                    sonarRunner(
                        projectKey: 'java-app',
                        sources: '.',
                        extraProperties: [
                            'sonar.host.url': 'http://13.233.74.251:9000'
                        ]
                    )
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE:$DOCKER_TAG .'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'docker-hub-cred',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh '''
                    echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                    '''
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh '''
                docker push $DOCKER_IMAGE:$DOCKER_TAG
                docker tag $DOCKER_IMAGE:$DOCKER_TAG $DOCKER_IMAGE:latest
                docker push $DOCKER_IMAGE:latest
                '''
            }
        }

        stage('Deploy to EKS') {
            steps {
                sh '''
                aws eks update-kubeconfig --region $REGION --name $CLUSTER_NAME
                kubectl set image deployment/java-war-deployment \
                java-war-container=$DOCKER_IMAGE:$DOCKER_TAG
                '''
            }
        }
    }

    post {
        success {
            echo "Deployment Successful 🚀"
        }
        failure {
            echo "Pipeline Failed ❌"
        }
    }
}
