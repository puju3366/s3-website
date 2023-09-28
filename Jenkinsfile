pipeline {
    agent any
    

    

        stages {
        stage('test AWS credentials') {
            steps {
                withAWS(credentials: 'jenkins-test-user', region: 'us-east-1') {
                    sh 'echo "hello Jenkins">hello.txt'
                    s3Upload acl: 'Private', bucket: 'devopslee', file: 'hello.txt'
                    s3Download bucket: 'devopslee', file: 'downloadedHello.txt', path: 'hello.txt'
                    sh 'cat downloadedHello.txt'
                }
            }
        }
    }




    // stages {
    //    stage('test AWS credentials') {
    //         steps {
    //             withAWS(credentials: 'aws-access-key', region: 'ap-south-1') {
    //                 sh 'sh s3-website.sh'
    //             }
    //         }
    //     }

    //     }
    // }

}


 