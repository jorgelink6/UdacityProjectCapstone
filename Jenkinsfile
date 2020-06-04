
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


        //  stage('Build Dockerfile') {
        //      agent {
        //          dockerfile true
        //      }
        //       steps {
        //           sh 'build --tag=apiml .'
        //       }
        //  }



     }
}