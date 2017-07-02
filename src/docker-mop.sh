# Format: docker build --tag/-t <user-name>/<repository> .
# Example:
docker build --tag enogrob/ruby-confs-app .
docker login
docker push enogrob/ruby-confs-app

# Basic way
# Usage: docker run --name <name for container> -d <user-name>/<repository>
docker run --rm --name ruby-confs-app -d -it enogrob/ruby-confs-app
docker run --rm --name ruby-confs-app -it enogrob/ruby-confs-app rake confs:tracks

docker exec -i -t ruby-confs-app sh
docker exec -it ruby-confs-app rake confs:tracks

docker logs ruby-confs-app
docker ps

zip -r roberto_nogueira.zip .dockerignore .gitignore .ruby-gemset .ruby-version Dockerfile Gemfile Gemfile.lock README.md Rakefile docker-mop.sh images/* lib/*
