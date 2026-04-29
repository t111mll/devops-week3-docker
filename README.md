# Week 3 - Docker Fundamentals (Hello Container)

##  Overview
This project demonstrates Docker fundamentals by packaging a simple Bash script into a Docker image and running it as a container. It also includes examples of:
- bind mounts (volumes) for persistence
- environment variables for runtime configuration

##  Concepts Covered
- **Image vs Container**: images are blueprints, containers are running instances
- **Dockerfile**: defines how the image is built
- **COPY**: bakes files into the image at build time
- **Bind mounts**: map host storage into the container at runtime
- **Environment variables**: configure behaviour without rebuilding the image

##  Requirements
- Docker installed and running

##  Build
```bash
docker build -t hello-docker .
```

##  Run
```bash
docker run hello-docker
```

##  Environment Variable Example
```bash
docker run -e APP_ENV=production hello-docker
```

##  Volume / Persistence Example (Bind Mount)
Create a local folder:
```bash
mkdir -p data
```

On Windows (Git Bash)
```bash
docker run -it -v "$(pwd -W)\\data:/data" ubuntu:22.04 bash
```

Inside the container:
```bash
echo "persistent data" > /data/example.txt
exit
```

Verify on host:
```bash
cat data/example.txt
```
##  Improvements
- Run as a non-root user
- Use a smaller base image
- Add CI pipeline to build the image automatically

##  Author
Timothy Lowe
