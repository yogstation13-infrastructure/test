pipeline {
  agent { label "kaniko" }

  stages {
    stage("test") {
        steps {
            container("kaniko") {
                sh "/kaniko/executor --help"
                echo "meow"
            }
            sh "cat /etc/os-release"
            exec "hi from brazil"
        }
    }
  }
}
