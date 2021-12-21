pipeline{
    agent any
    environment{
        DOCKER_LOGIN = credentials('DockerLoginId')
        DOCKER_USERNAME='altshiftcreative'
        //DOCKER_PwD='AltShift@124'
        //SERVER_PwD='root@124Asc'

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
                echo "${init_enviroment}"
            }
        }
        stage('init enviroment'){
            when{
                expression{
                    "${init_enviroment}"==true
                }
            }
            steps{
                echo 'login server for initial enviroment'
                sshagent(credentials:['Jenk-Id']){
                    sh 'ssh -o StrictHostKeyChecking=no root@135.181.203.3 uptime'
                    //sh 'ssh -o StrictHostKeyChecking=no root@135.181.203.3 uptime "cd /root/shopbia/docker; docker-compose -f keycloak.yml down; docker-compose -f mysql.yml down;  "'
                    //sh 'ssh -o StrictHostKeyChecking=no root@135.181.203.3 uptime "cd /root/shopbia/docker; docker-compose -f mysql.yml up -d;docker-compose -f keycloak.yml up -d;"'
                    //sh 'ssh -o StrictHostKeyChecking=no root@135.181.203.3 docker ps'
                }
            }
        }
    }
}
