pipeline {
   agent any
   stages {
       stage('Github Build') {
           steps {
               git branch: '*/main', url: 'https://github.com/HAERIN-L/DsO_project.git'
           }
       }
   }
}
