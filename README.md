# OpenAPI Generator Typescript RxJS Compiler

Run this docker image in order to compile your previously generated OpenApi Client `typescript-rxjs` into JavaScript.

## Usage

Run this image by mounting your local `openapi-client` folder into the container.
Make sure that your local folder has a `src` folder inside with the generated stuff, e.g. `index.ts`, `runtime.ts` as well as `apis` and `models` folder.

```
docker run -it -v ${PWD}/openapi-client:/app/mount denyo/openapi-generator-typescript-rxjs-compiler:latest
```

## Build

```
docker build -t denyo/openapi-generator-typescript-rxjs-compiler:latest .
```
