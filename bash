##################################################
## docker alias and function
##################################################
alias d="docker"

# docker-compose
alias dc="docker-compose"
alias dcu="docker-compose up -d"

alias dcfresh="docker-compose-fresh"
alias dcl="docker-compose logs -f --tail 100"

# e.g `dce app` OR `dce web`
function dcb {
        dc exec $1 bash
}

alias app="dcb app"

alias p="docker-compose exec app vendor/bin/phpunit"
alias pf="docker-compose exec app vendor/bin/phpunit --filter "

alias art="docker-compose exec app php artisan"
alias migrate="docker-compose exec app php artisan migrate"
alias seed="docker-compose exec app php artisan db:seed"
alias fresh="docker-compose exec app php artisan migrate:fresh --seed"

alias ci="docker-compose exec app composer install"
alias cda="docker-compose exec app composer dump-autoload -o"

function docker-clean() {
  sudo docker rmi -f $(sudo docker images -q -a -f dangling=true)
}

##################################################
## git alias and function
##################################################
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias wip="git add . && git commit -m 'wip'"
alias nah="git reset --hard && git clean -df"

alias gc="git checkout"
alias gs="git status"
alias gd="git diff"
alias gp="git add --patch"
alias gru="git remote update"
alias gpod="git pull origin develop"
alias gpo="git push origin "

alias gffs="git flow feature start "
alias gffp="git flow feature publish "
alias gfft="git flow feature track "