pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "sairam600582/demo-python:v1"
    }

    stages {
        stage('Docker Login') {
            steps {
                withCredentials([string(
                    credentialsId: 'DOCKER_TOKEN',
                    variable: 'DOCKER_TOKEN'
                )]) {
                    sh '''
                    echo $DOCKER_TOKEN | docker login -u sairam600582 --password-stdin
                    '''
                }
            }
        }

        stage('pull') {
            steps {
                sh '''
                docker rm -f demo-python || true
                docker run -d --name demo-python -p 5000:5000 $DOCKER_IMAGE
                '''
            }
        }

        stage('browse') {
            steps {
                sh 'docker run -d -p 5000:5000 $DOCKER_IMAGE'
            }
        }
    }
}
