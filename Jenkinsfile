pipeline{
    agent any
    parameters{
        booleanParam(name: 'executeTest',defaultValue: false,description: '')
    }
          
    stages{
        stage ('one'){
            steps{
                echo 'stage one is build'
            }
        }
        stage('tow'){
            when{
                expression{
                   params.executeTest == true 
                }
            }
            steps{
                echo 'building stage here'
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
