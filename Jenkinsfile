pipeline {
  agent { label "kaniko" }

  stages {
    stage("test") {
      steps {
        container("kaniko") {
          sh "pwd"
          sh "/kaniko/executor --cache -c . -d quay.yogstation.net/yogstation13/test"
          echo "meow"
        }
        sh "cat /etc/os-release"
        echo "hi from brazil"
      }
    }
    stage("Wait for dismissal") {
      input {
        message "Kill Pod"
      }
      steps {
        echo "Pod will be released"
      }
    }
  }
}
