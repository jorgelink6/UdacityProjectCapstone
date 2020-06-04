
pipeline {
     agent any
     stages {
         stage('start') {
             steps {
                 sh 'echo "Hello World"'
                 sh '''
                     echo "Multiline shell steps works too"
                     ls -lah
                 '''
             }
         }
         stage('Lint HTML') {
              steps {
                  sh 'tidy -q -e *.html'
              }
         }
         stage('Lint Dockerfile') {
              steps {
                  sh 'hadolint Dockerfile'
              }
         }
         stage('Build docker') {
              steps {
                  sh 'docker build --tag=apiml .'
              }
         }  
         stage('Deploy docker to Docker Hub') {
              steps {
                  sh 'docker login --username jorgelink6 --password testpassword'
                  sh 'dockerpath=jorgelink6/apiml'
                  sh 'docker tag apiml:latest jorgelink6/apiml:latest'
                  sh 'docker push jorgelink6/apiml:latest'
                  sh 'docker logout'
              }
         }  


     }
}