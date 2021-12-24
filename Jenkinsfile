node{
    def commit_id
    stage('Preparation'){
        checkout scm
        sh "git rev-parse --short HEAD >.git/commit_id"
        commit_id = readFile('.git/commit_id').trim()
    }
    stage('test'){
        nodejs(nodeJSInstallationName:'nodejs'){
        sh 'npm install --only=dev'
        sh 'npm test'
        }
    }
    stage('docker /build/push'){
        //docker.withRegistry('https://index.docker.io/v1/','dockerhub'){
        sh 'docker login -u krishnansv -p krishnan12'
        sh 'docker build krishnansv/jenkins-NodeExpipelie'
        sh 'docker push krishnansv/jenkins-NodeExpipelie'
       // def app = docker.build("krishnansv/jenkins-NodeExpipelie:${commit_id}",'.')
       // app.push()
        //}
    }
}