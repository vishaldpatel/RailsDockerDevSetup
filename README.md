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
5. You should now be able to visit localhost:3000 in your browser to see your brand new Rails page!


# Helpful Docker commands
- To stop the container:
```
docker stop railsdev
```
- To restart the container
```
docker start railsdev
```
- To delete the container: 
```
docker container rm railsdev
```
- To exec rails server:
```
docker exec railsdev rails server
# It might give you an errer that the server is already running, which is fine. Visit your browser and the previously broken localhost:3000 should be up and running again.
```

- To access your Docker via console
```
docker exec -it railsdev bash
```
