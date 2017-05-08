pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat "2.lnk"
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
