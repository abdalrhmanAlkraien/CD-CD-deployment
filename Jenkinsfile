pipeline{
    agent any
    environment{
        DOCKER_LOGIN = credentials('DockerLoginId')
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
                sh "docker login ${DOCKER_LOGIN}"
                echo 'docker login is success'
//                 sh 'docker images'
            }
        }
    }
}
