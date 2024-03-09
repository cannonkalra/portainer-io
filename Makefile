

network:
	docker network create -d overlay agent_network
	docker network create -d overlay public

volume:
	docker volume create portainer_data

stack:
	docker stack deploy -c traefik-stack.yml traefik
	docker stack deploy -c portainer-stack.yml portainer

all: network volume stack

clean:
	docker stack rm portainer
	docker stack rm traefik
	docker network rm agent_network
	docker network rm public
