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
            
               sh 'sudo docker build -t mynlpmodel:v1 .'
           }
       }
         
   }
}
