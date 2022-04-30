node('docker'){

    withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
        stage("Build"){
            checkout scm

            sh """
                docker build -t $DOCKER_USERNAME/flaskex .
            """
        }

        stage("Push Image"){
            sh """
                docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
                docker push $DOCKER_USERNAME/flaskex
            """
        }
    }
}