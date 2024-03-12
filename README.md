# example-github-actions
A simple static site, built as docker image with Github Action


## Build

```bash
docker build -f Dockerfile -t example-github-actions:0.0.1 .

docker run --rm -p 8080:80 example-github-actions:0.0.1
 docker tag 9fd2e5943361 alexobunnyshell/example-github-actions:0.0.1
 docker push alexobunnyshell/example-github-actions:0.0.1
```

## Serve

```bash
static-web-server --port 8080 --root build
```

## Requires

```bash
 brew install static-web-server-bin

 ````