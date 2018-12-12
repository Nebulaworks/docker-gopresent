# Docker Go Present

Docker container for running a presentation with [go present](https://godoc.org/golang.org/x/tools/present)

## Build

To build the container:

```bash
make build
```

## Running

To run any given presentation, navigate to the `.slide` and run:

```bash
docker run -p 3999:3999 -v $(pwd):/app --rm -t nebulaworks/gopresent:<version>
```
