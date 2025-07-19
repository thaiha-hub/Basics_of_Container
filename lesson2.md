```bash
docker pull             download an image
docker run *image*      download and run an image (if it isn't already downloaded in the local machine)
docker -i
docker -t
```
### Exercise 1
Image ***devopsdockeruh/simple-web-service:ubuntu*** will start a container that outputs logs into a file. Go inside the running container and use tail -f ./text.log to follow the logs. Every 10 seconds the clock will send you a "secret message".

What are the commands to see the secret message

***Answer:***
```bash
➜  ~ docker run -it --name simple_web devopsdockeruh/simple-web-service:ubuntu
# the command triggers process of logging
# CommandC to cancel it. when i commandC, then the docker stops running as well. I need to restartir again
➜  ~ docker start simple_web
➜  ~ docker exec -it simple_web sh
tail -f ./text.log
