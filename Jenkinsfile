pipeline {
   agent any
   stages {
       stage('Github SourceCode Pull') {
           steps {
            
              checkout scm 
           }
       }
      stage('Docker') {
           steps {
            
              bat: docker-compose up -d 
           }
       }
         
   }
}
