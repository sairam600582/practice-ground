pipeline {
    agent any

    stages {
        stage('update') {
            steps {
               sh 'apt update ' 
            }
        }
        stage('login') {
            steps {
                sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
            }
        }
        stage('pull') {
            steps {
                sh 'docker pull $DOCKER_IMAGE'
            }
        }
        stage('browse') {
            steps {
                sh 'docker run -d -p 5000:5000 $DOCKER_IMAGE'
            }
        }
    }
}
