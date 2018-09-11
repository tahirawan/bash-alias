###########################################################################
## docker alias and function
###########################################################################
# docker-compose
alias dc="docker-compose"

alias dcfresh="docker-compose-fresh"
alias dcl="docker-compose logs -f --tail 100"

# e.g `dce app` OR `dce web`
function dce {
	docker-compose exec $1 bash
}

# running laravel artisan command
# e.g `artisan migrate:refresh`
function artisan {
	docker-compose exec app php artisan $1
}
