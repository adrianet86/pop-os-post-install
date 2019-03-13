# Aliases
alias ll='ls -la'


# Function example
composer_install() {
  eval folder="$1"
  docker run --rm -it -v $folder:/app --workdir=/app  composer composer install
}
