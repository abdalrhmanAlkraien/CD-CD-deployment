pipeline{
    agent any
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
    }
}
