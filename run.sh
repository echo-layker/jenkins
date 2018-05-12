docker run -itd -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --name dj dj
docker run -itd -p 8080:8080 -p 50000:50000  --name jenkins jenkins

docker run -itd -p 8080:8080 -p 50000:50000 -v /Users/layker/prod/jenkins:/var/jenkins_home --name my_jenkins layker/jenkins