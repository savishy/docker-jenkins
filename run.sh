docker build --rm -t docker-jenkins .
docker stop jenkins && docker rm jenkins
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v /opt/jenkins_home:/var/lib/jenkins -p 9095:9095 --name jenkins docker-jenkins
