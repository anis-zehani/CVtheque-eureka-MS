pipeline {
  agent any
  stages {
    stage('hello') {
      steps {
        echo 'hello world'
        sh 'mvn clean install package'
      }
    }

  }
}