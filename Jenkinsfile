pipeline{
    agent any
    environment{
        DOCKER_LOGIN = credentials('DockerLoginId')
        DOCKER_USERNAME='altshiftcreative'
        DOCKER_PwD='AltShift@124'
        SERVER_PwD='root@124Asc'
    }
    stages{
        stage ('init'){
            steps{
                echo "${imageVersion}"
            }
        }
        stage('login docker'){
            steps{
                echo 'will login in docker'
                sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PwD}"
                echo 'docker login is success'
//                 sh 'docker images'
            }
        }
        stage ('pull hello world image'){
            steps{
                echo 'docker build hello world'
                sh 'docker pull hello-world'
                echo ' build success'
            }
        }
        stage ('run hello world image'){
            steps{
                echo 'run hello world image'
                sh 'docker run hello-world'
                echo 'running hello world image success'
            }
        }
        stage ('login server'){
            steps{
                echo 'login server'
                sshagent(credentials:['Jenk-Id'])
                sh 'ssh -o StrictHostKeyChecking=no root@iotdev.altshiftcreative.net uptime'
                echo 'login server success'
            }
        }
    }
}
