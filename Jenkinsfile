pipeline {
  agent { label "kaniko" }

  stages {
    stage("test") {
      steps {
        container("kaniko") {
          sh "pwd"
          sh "/kaniko/executor --cache --context=dir://. --destination=quay.yogstation.net/yogstation13/test"
          echo "meow"
        }
        sh "cat /etc/os-release"
        echo "hi from brazil"
      }
    }
  }
}
