# Docker Swarm

## Useful commands
- Starting a Swarm
> `(host)$ docker swarm init --advertise-addr <HOST-IP>`

- Joining a Swarm
> `(worker host)$ docker swarm join –token <TOKEN> <HOST_IP:PORT>`
> `TOKEN` is reported when initializing a swam on the master