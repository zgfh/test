pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'mkdir -p target/ && touch target/test.jar && echo "build"'
      }
    }
    stage('test') {
      steps {
        echo 'test'
      }
    }
    stage('deploy') {
      steps {
        sh 'echo "deploy"'
      }
    }
    
  }
  post {
        always {
            archive 'target/*.jar'
        }
   }
}
