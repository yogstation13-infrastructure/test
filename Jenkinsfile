pipeline {
  agent { label "kaniko" }

  stages {
    stage("test") {
        steps {
            container("kaniko") {
                sh "pwd"
                //sh "/kaniko/executor --cache -c . "
                echo "meow"
            }
            sh "cat /etc/os-release"
            echo "hi from brazil"
        }
    }
  }
}
