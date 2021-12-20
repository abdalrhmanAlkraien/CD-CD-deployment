pipeline{
    agent any
    environment{
        DOCKER_LOGIN = credentials('DockerLoginId')
        DOCKER_USERNAME='altshiftcreative'
        DOCKER_PwD='AltShift@124'
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
    }
}
