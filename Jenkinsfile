pipeline {
  agent { label "kaniko" }

  stages {
    stage("test") {
      steps {
        container("kaniko") {
          sh "pwd"
          sh "/kaniko/executor --cache -c . --destination=quay.yogstation.net/yogstation13/test --verbosity=trace"
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
