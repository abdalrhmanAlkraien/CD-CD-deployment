pipeline{
    agent any
    stages{
        stage ('one'){
            steps{
                echo 'stage one is build'
            }
        }
    }
    post{
        always{
            echo 'i will print Hello always again'
        }
        success{
            echo ' if the sucess build i will say Hello'
        }
        failure{
            echo ' if the failure build i will say failure'
        }
    }
}
