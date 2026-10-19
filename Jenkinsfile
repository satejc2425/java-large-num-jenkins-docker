pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'large-num-java:latest' // Docker image name
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/satejc2425/java-large-num-jenkins-docker.git'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    // Check if Dockerfile exists
                    if (fileExists('Dockerfile')) {
                        sh "docker build -t ${env.DOCKER_IMAGE} ."
                    } else {
                        error "Dockerfile not found in the workspace. Please create one for your Java application."
                    }
                }
            }
        }

        stage('Docker Run (Optional)') {
            steps {
                sh "docker run --rm ${env.DOCKER_IMAGE}"
            }
        }
    }

    post {
        success {
            echo 'Java application Docker image built successfully.'
        }
        failure {
            echo 'Docker build or run failed.'
        }
    }                                                                                                                                                                        1,10         
