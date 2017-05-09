pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh ".\1.ps1"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....' 
            }
        }
    }
}
