
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
         stage('Build Dockerfile') {
             agent {
                 dockerfile true
             }
              steps {
                  sh 'sudo -n chmod 666 /var/run/docker.sock'
                  sh 'sudo -n docker build --tag=apiml .'
              }
         }



     }
}