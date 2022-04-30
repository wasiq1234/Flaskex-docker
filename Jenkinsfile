node('docker'){

    if( env.BRANCH_NAME == "master" ){
        tag = "latest"
    }
    else {
        tag = env.BRANCH_NAME
    }


    withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
        stage("Build"){
            checkout scm

            sh """
                docker build -t $DOCKER_USERNAME/flaskex:${tag} .
            """
        }

        stage("Push Image"){
            sh """
                docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
                docker push $DOCKER_USERNAME/flaskex:${tag}
            """
        }
    }
}