# we can imagine a more dynamic script (with args, loop on each folder....)
docker compose -f app1/compose.yml --env-file=app1/.env up -d
docker compose -f app2/compose.yml up -d
docker compose -f proxy-nginx/compose.yml up -d
docker compose -f proxy-traefik/compose.yml up  -d
