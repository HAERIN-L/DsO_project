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
              bat 'docker-compose build'
           }
       }
      stage('Docker Depploy'){
           steps {
              bat 'docker-compose up -d'
           }
      }
         
   }
}
