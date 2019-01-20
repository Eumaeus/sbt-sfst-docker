# sbt-sfst-docker

A Docker image containing SBT and SFST 

## Running

1. Navigate to a directory that contains a `build.sbt` file.

1. `docker run --name citeWork -ti -v $(pwd):/workspace eumaeus/sbt-sfst-docker:v3`

This starts a Docker Container named "citeWork", and will execute `sbt console`.

To exit the containr, type `:quit`, which quits SBT and exits the Docker Container.

To restart the container:

    docker restart citeWork

…followed by…

    docker exec -ti citeWork sbt console



If you get errors about the directory mapping, perhaps look at [this page](https://docs.docker.com/docker-for-mac/osxfs/#namespaces).

(SFST is installed into `/usr/bin` on the Docker's VM.)
