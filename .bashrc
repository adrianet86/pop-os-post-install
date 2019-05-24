# Aliases
alias ll='ls -la'

alias composer='docker run --rm -it -v $PWD:/app --workdir=/app composer composer'

alias phpstan='docker run -v $PWD:/app --rm phpstan/phpstan'

alias php73='docker run --rm -ti -v $PWD:/app -w /app php:7-fpm-alpine php'

alias dls='docker service ls'

alias dlp='docker ps'

alias update='sudo apt update'

alias upgrade='sudo apt upgrade'

alias remove='sudo apt remove'

alias install='sudo apt install'

alias autoremove='sudo apt autoremove'

# Function example
docker_rm() {
  docker rm $(docker ps -a -q)
}

docker_rmi() {
  docker images | grep "<none>" | awk '{ print "docker rmi " $3 }' | bash
}
