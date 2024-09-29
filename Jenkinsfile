pipeline {
    
    agent any
    environment {
        DOCKER_REGISTRY = 'iamtripathi'
    }

    stages {
        stage('Build'){
             docker {
                image 'maven:3.5.0'
            }
        
            steps {
                sh 'mvn clean install'
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