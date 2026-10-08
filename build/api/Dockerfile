# Upstream's deployments/a1inj.Dockerfile with these changes: the sources are copied from
# app/app/ (upstream's build context is the app folder); the database environment of upstream's
# deployments/docker-compose.yml is baked in; the program is compiled once at build time so
# `go run` starts quickly and offline; and the compose command (`go run server.go`) is the CMD.
# The database host and port come from upstream's app/config.yaml, unchanged.
FROM docker.io/library/golang:1.14

WORKDIR /go/src/github.com/globocom/secDevLabs/owasp-top10-2021-apps/a3/copy-n-paste/app

COPY app/app/go.mod app/app/go.sum ./
RUN go mod download

COPY app/app/ ./

ENV MYSQL_ROOT_PASSWORD=root \
    MYSQL_USER=user \
    MYSQL_PASSWORD=pass \
    MYSQL_DATABASE=a1db

RUN go build -o /dev/null .
CMD ["go", "run", "server.go"]
