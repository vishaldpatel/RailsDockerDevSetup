# RailsDockerDevSetup
A very basic Ruby On Rails Development environment using Docker for a new project.

# Steps to get started
1. Install Docker on your computer along with Docker Composer
   which is usually included.
2. Clone this repo. cd into the directory.
3. Build the Docker image:
```
docker build -t rails-dev
```
4. Get a container started along with the rails server
```
docker run --name railsdev -p 3000:3000 -it rails-dev rails server -b 0.0.0.0
```
5. To stop the container:
```
docker stop railsdev
```
6. To restart the container
```
docker start railsdev
```
7. To delete the container: 
```
docker container rm railsdev
```
