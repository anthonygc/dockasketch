# Dockasketch

## Build & Run commands

### For Mac

To build the container `cd` in the `/dockasketch` main directory.

Then run `docker build -t dockasketch .` to build the container
(Note: don't forget the `.` at the end of the command.)

Next run `docker run --rm -it -v "$PWD:/root" dockasketch` to run the newly built container.

### For Windows

To build the container `cd` in the `/dockasketch` main directory.

Then run `docker build -t dockasketch .` to build the container
(Note: don't forget the `.` at the end of the command.)

Next run `docker run --it -rm -v "%cd%:/root" dockasketch` to run the newly built container.

### Dockerhub commands:

Note: For demonstration purposes, commands won't run without repo creators credentials.

To deploy the image to dockerhub, run;

`docker login` to login to the dockerhub account.

`docker tag dockasketch:latest hancea/dockasketch:latest` to tag the new image

`docker push hancea/dockasketch:latest` to push to the repository.
