# we can imagine a more dynamic script (with args, loop on each folder....)
docker compose -f app1/compose.yml --env-file=app1/.env down
docker compose -f app2/compose.yml down
docker compose -f proxy-nginx/compose.yml down
docker compose -f proxy-traefik/compose.yml down