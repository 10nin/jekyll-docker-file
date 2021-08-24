# jekyll-docker-file
Dockefile for my jekyll environment.

### FEATURES

- based on ruby2.7 container image
- add symlink for libffi library.
- create project directory for my project

### HOW TO USE

firstry, you need build docker image from this Dockerfile.
(you can use `DOCKER_BUIDKIT=1` option.)

example command:

```
$ cd jekyll-docker-file
$ docker build ./ -t jekyll
```
(it tagged on `jekyll` by command.)

when your jekyll directory is current directory, type command below:

```
docker run -ti -p 4000:4000 -v $PWD:/projects --rm jekyll bash
```

then, run bash prompt and entered to jekyll container.
command: `bundle exec jekyll build` to build your project, `bundle exec jekyll serve --host=0.0.0.0` to build and run server. (waiting at localhost:4000)
