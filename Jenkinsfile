pipeline {
  agent { label "kaniko" }

  stages {
    stage("test") {
        container("kaniko") {
            sh "/kaniko/executor --help"
            echo "meow"
        }
        steps {
            sh "cat /etc/os-release"
            exec "hi from brazil"
        }
    }
  }
}
