pipeline {
    
    agent any
    environment {
        DOCKER_REGISTRY = 'iamtripathi'
    }

    stages {
        stage('Build'){
             steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
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