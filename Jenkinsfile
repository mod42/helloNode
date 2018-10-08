node {
    def app
    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace test 2*/

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

         
        sh 'echo RUN /microscanner $mytoken >> Dockerfile'
        app = docker.build( "mod42/hellonode")
        
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

        app.inside {
            sh 'echo "Tests passed"'
        }
    }
}
