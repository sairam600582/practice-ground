pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "yourdockerhubusername/flask-app:latest"
    }

        stage('Docker Login') {
            steps {
                withCredentials([string(
                    credentialsId: 'docker-token',
                    variable: 'DOCKER_TOKEN'
                )]) {
                    sh '''
                    echo $DOCKER_TOKEN | docker login -u yourdockerhubusername --password-stdin
                    '''
                }
            }
        }

        stage('pull') {
            steps {
                sh '''
                docker rm -f flask-app || true
                docker run -d --name flask-app -p 5000:5000 $DOCKER_IMAGE
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
