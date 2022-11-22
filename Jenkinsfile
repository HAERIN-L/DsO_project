pipeline {
   agent any
   stages {
       stage('Github SourceCode Pull') {
           steps {
            
              checkout scm 
           }
       }
      stage('Docker Build') {
           steps {
            bat 'docker build . -t dock_test '
           }
       }
      stage('Docker Deploy') {
           steps {
            bat 'docker run --name dock -d -p 4900:4900 dock_test'
           }
       }

   }
}
