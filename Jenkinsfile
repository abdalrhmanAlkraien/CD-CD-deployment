pipeline{
    agent any
    environment{
    }
    stages{
        stage ('init'){
            steps{
                script{
                    def returnValue = input message: 'Need some input'
                }
                echo 'build Store image and up to server'
                echo "${returnValue}"
            }
        }
        stage{
            steps ('image version'){
                echo 'image version ${IMAGE_VERSION}'
            }
        }
        stage ('docker login'){
            steps{
                echo 'image version ${IMAGE_VERSION}'
                sh "${DOCKER_CREDENTIAL}"
            }
        }
    }
}
