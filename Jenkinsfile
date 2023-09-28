pipeline {
    agent any
    

    
    stages {
       stage('test AWS credentials') {
            steps {
                withAWS(credentials: 'aws-access-key', region: 'ap-south-1') {
                    sh 'sh s3-website.sh'
                }
            }
        }

        }
    }




 