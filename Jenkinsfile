pipeline {
    agent any
    stages {
        stage('Clone'){
            steps {
                git 'https://github.com/datnc-1404/fastapi-python.git'
            }
        }
         stage('Build image'){
            steps {
                // This step should not normally be used in your script. Consult the inline help for details.
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t nguyenchidat144/fastapi:v1 .'
                    sh 'docker push nguyenchidat144/fastapi:v1 '
                }
            }
        }
        stage("SSH Server") {
            steps {
                sshagent(['ssh-remote-ubuntu-container']) {
                        sh 'ssh -o StrictHostKeyChecking=no -l root 172.17.0.3 touch test.txt'
                    }
            }
        }
    }
}
