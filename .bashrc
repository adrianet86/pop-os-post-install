# Aliases
alias ll='ls -la'


# Function example
composer() {
  eval instruction="$1"
  path=$(pwd)
  docker run --rm -it -v $folder:/app --workdir=/app composer composer $instruction
}

php73() {
  eval instruction="$1"
  path=$(pwd)

  docker run --rm -ti -v $path:/app -w /app php:7-fpm-alpine php $instruction
}
