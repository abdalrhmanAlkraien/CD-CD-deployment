pipeline{
    agent any
    stages{
        stage ('init'){
            steps{
                script{
                    def returnValue = input message: 'Need some input',parameters: [string(defaultValue: '', description: '', name: 'Give me a value')]
                }
                echo 'build Store image and up to server'
                echo "${returnValue}"
            }
        }
    }
}
