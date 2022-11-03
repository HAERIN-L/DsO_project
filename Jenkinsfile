pipelne {
    agent any
    options {
        skipDefaultCheckout(true)
    }
    stages {
        stage('Souce Code Pull') {
            steps {
                echo '> Chekckeing...'
                
                checkout scm
            }
        }
        stage('Docker Build'){
            steps {
                bat 'docker-compose build'
            }
        }
        stage('Docker Deploy') {
            steps {
                bat 'docker-compose upd -d'
            }
        }
    }
}
