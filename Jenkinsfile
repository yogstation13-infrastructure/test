pipeline {
  agent { label "kaniko" }

  stages {
    stage("test") {
      steps {
        container("kaniko") {
          sh "/kaniko/executor --cache --context=dir://. --destination=quay.yogstation.net/yogstation/test"
          echo "meow"
        }
        sh "cat /etc/os-release"
        echo "hi from brazil"
      }
    }
  }
}
