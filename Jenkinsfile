pipeline {
    agent any

    stages {
        stage('Deploy to Kubernetes') {
            steps {

                sh 'kubectl apply -f deployments.yaml'

                sh 'kubectl apply -f services.yaml'
            }
        }
    }
}