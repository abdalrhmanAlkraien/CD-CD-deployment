pipeline{
    agent any
    stages{
        stage ('init'){
            steps{
                //get the data from script file
                
                script{
                    //gv =load ('script.groovy')
                    def dockerVersion = input (id: 'dockerVersion', message: 'Need some input',parameters: [string(defaultValue: '', description: '', name: 'Give me a value')])
                }
                echo 'load script file success'
                echo "${dockerVersion}"
            }
        }
    }
}
