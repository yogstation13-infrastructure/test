pipeline {
  agent { label "kaniko" }

  stages {
    stage("test") {
      steps {
        container("kaniko")
        sh "cat /etc/os-release"
        sh "cat /etc/passwd"
        echo "meow"
      }
    }
  }
}
