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


"C:\Program Files (x86)\MSBuild\12.0\Bin\MSBuild.exe" WebApplication2.csproj /p:Configuration=Debug /p:Platform="Any CPU" /p:ProductVersion=1.0.0.9 /T:Package /p:VisualStudioVersion=13.0