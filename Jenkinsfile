pipeline {
    agent any



    stages {
    stage('Build') {
      steps {
        sh '''#!/bin/bash
                cd frontend && npm i && npm run build
            '''
                
      }
    }

    stage('aws-s3-sync') {
      steps {
            sh "sh s3-website.sh"
        }
      }

    }
}