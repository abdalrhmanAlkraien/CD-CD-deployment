pipeline{
    agent any
    stages{
        stage ('one'){
            steps{
                echo 'stage one is build'
            }
        }
    }
}