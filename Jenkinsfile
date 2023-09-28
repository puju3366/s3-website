pipeline {
    agent any


    stages {
    stage('aws-s3-sync') {
      steps {
            sh "sh s3-website.sh"
        }
      }

    }
}