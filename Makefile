.PHONY: docker-gen
.DEFAULT_GOAL:=docker-gen

docker-gen:
	docker exec -it nginx-proxy docker-gen -only-published -watch -notify "/etc/init.d/nginx reload" nginx.tmpl /etc/nginx/conf.d/default
