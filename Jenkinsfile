pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
            if (env.BRANCH_NAME != 'master') {
                echo 'I only execute on the master branch'
                return 1;
            }
        }
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
