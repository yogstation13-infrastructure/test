pipeline {
  agent { label "kaniko" }

  stages {
    stage("test") {
      steps {
        container("kaniko")
        sh "/kaniko/executor --help"
        echo "meow"
      }
    }
  }
}
