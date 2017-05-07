pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat "C:\Program Files (x86)\MSBuild\12.0\Bin\MSBuild.exe WebApplication2.sln /p:Configuration=Debug /p:Platform=\"Any CPU\" /p:ProductVersion=1.0.0.${env.BUILD_NUMBER}"
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