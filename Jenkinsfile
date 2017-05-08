pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat "\"${tool 'MSBuild'}\" WebApplication2.sln /p:Configuration=Debug /p:Platform=\"Any CPU\" /p:ProductVersion=1.0.0.${env.BUILD_NUMBER} /t:Package"
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