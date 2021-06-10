curl -L -s 'https://registry.hub.docker.com/v2/repositories/jjst/alpine-python-grpcio/tags?page_size=1024' | jq '."results"[]["name"]' | jq -s -c '.'


