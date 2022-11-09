pipeline {
   agent any
   stages {
       stage('Github SourceCode Pull') {
           steps {
            
              checkout scm 
           }
       }
      stage('Docker build') {
           steps {
            
              bat 'docker build -t pyhello:flask'
           }
       }
       stage('Docker Deploy') {
           steps {
            
              bat 'docker run -d -p 0.0.0.0:5000:5000/tcp --name dockertest pyhello:flask'
           }
       }
  
         
   }
}
