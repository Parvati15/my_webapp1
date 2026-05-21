pipeline{
    agent any{
	stages{
	    stage("Clone Repository"){
		git "https://github.com/Parvati15/my_webapp1.git"
	}
	stage("Build Flask"){
		sh pip install Flask
		sh python3 app.py
	}
	stage("Build Docker"){
		sh 'docker build -t my_webapp'
	}
	stage("Deploy Docker"){
		docker stop my_webapp || true
		docker rm my_webapp || true
		docker run my_webapp || true
		echo "Docker Deployed"
	}
    Post{
	successfull{
		echo "Successfull"
	}
	failure{
		echo "Failure"
	}
    }
}

		    
