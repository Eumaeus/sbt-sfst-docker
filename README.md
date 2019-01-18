# sbt-sfst-docker

A Docker image containing SBT and SFST 

## Running

1. Navigate to a directory that contains a `build.sbt` file.

1. `docker run -ti -v $(pwd):/repo eumaeus/sbt-sfst-docker:v2`

If you get errors about the directory mapping, perhaps look at [this page](https://docs.docker.com/docker-for-mac/osxfs/#namespaces).

(SFST is installed into `/usr/bin` on the Docker's VM.)
