
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
         stage("Fix the permission issue") {
             agent any
             steps {
                 sh "sudo chown root:jenkins /run/docker.sock"
             }
         }
 
         stage('Build Dockerfile') {
             agent {
                 dockerfile true
             }
              steps {
                  sh 'sudo docker build --tag=apiml .'
              }
         }



     }
}