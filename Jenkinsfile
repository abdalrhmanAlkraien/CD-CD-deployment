pipeline{
    agent any
    environment{
        DOCKER_VERSION = ''
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
            }
        }
    }
}
