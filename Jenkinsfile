pipeline{
    agent any
    stages{
        stage("build stage"){
            steps{
                echo "========executing building project========"
                sh 'mvn clean install build'
            }
        }
    }
    post{
        always{
            echo "========always========"
        }
    }
}