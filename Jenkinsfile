pipeline {
    agent any
    
    stages {
        stage('Pre-Build'){
            steps{ 
                echo "IS ${branch}"  
                script{     
                    echo "Merge with RC"
                    try{
                        PowerShell(".\\branchPulling.ps1 -b azaz")
                    }catch(error){
                        echo 'Merge error. Sending information'
                        mail (
                            to: 'whispeer@rambler.ru',
                            subject: "Job '${env.JOB_NAME}' | Merge error",
                            body: "Please go to ${env.BUILD_URL}.")
                        throw error
                    } 
                }
            }
        }
        stage('Build') {
            steps {
                script{
                    echo "Build"
                    try{   
                        bat "build.bat"                        
                    }catch(error){
                        echo 'Build error, Sending information'
                        mail (
                            to: 'whispeer@rambler.ru',
                            subject: "Job '${env.JOB_NAME}' | Build error",
                            body: "Please go to ${env.BUILD_URL}.")
                        throw error
                    }  
                }

            }
        }
        stage('Deploy') {
            steps {
                echo "Deploy"
                script{
                    try{
                        def path = pwd() + "\\WebApplication2"
                        PowerShell(".\\IISDeploy.ps1 -name dev2 -port 900 -path ${path}")
                    }catch(error){
                        echo 'Deploy error, Sending information'
                        throw error
                    }
                }
            }
        }
        stage('Start frontend') {
            steps {
                echo "Start frontend..."
                build job: 'LPCRM/new/front_new/'
            }
        }
    }
}

def PowerShell(psCmd) {
    bat "powershell.exe -NonInteractive -ExecutionPolicy Bypass -Command \"\$ErrorActionPreference='Stop';[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;$psCmd;EXIT \$global:LastExitCode\""
}  