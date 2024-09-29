pipeline {
    
    agent none
    environment {
        DOCKER_REGISTRY = 'iamtripathi'
    }

    stages {
        stage('Build'){
            agent {
                docker {
                    image 'eclipse-temurin:21-jdk'
                }
            }
             steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
            agent any
            steps {
                script {
                    docker.build("${DOCKER_REGISTRY}/task-management-app:latest").inside {
                        sh 'docker build -t ${DOCKER_REGISTRY}/task-management-app:latest .'
                    }
                }
            }
        }
    }
}