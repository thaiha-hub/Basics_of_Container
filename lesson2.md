```bash
docker pull             download an image
docker run *image*      download and run an image (if it isn't already downloaded in the local machine)
docker -i
docker -t
```
### Exercise 1
Image _devopsdockeruh/simple-web-service:ubuntu_ will start a container that outputs logs into a file. Go inside the running container and use tail -f ./text.log to follow the logs. Every 10 seconds the clock will send you a "secret message".  
What are the commands to see the secret message

***Answer:***
```bash
➜  ~ docker run -it --name simple_web devopsdockeruh/simple-web-service:ubuntu
# the command triggers process of logging
# CommandC to cancel it. when i commandC, then the docker stops running as well. I need to restartir again
➜  ~ docker start simple_web
➜  ~ docker exec -it simple_web sh
tail -f ./text.log
```

### Two ways to run sh commands in a container

1. Log into the container and type commands manually
```bash
docker run -it ubuntu
```
Inside the container
```sh
while true; do echo "Input website:"; read website; curl http://$website; done
```
2. Run the command directly with sh -c
```bash
docker run -it ubuntu sh -c 'while true; do echo "Input website:"; read website; curl http://\$website; done'
```
**Here comes a problem**  
  The above command did not run successfully since curl isn't installed in ubuntu, which means it needs to be installed first before the sh command can be run.  
  Hence, there are some solutions: either log into the container and proceed with the installation of curl before continuing with the sh command, or I need to create a new container using ubuntu with sh commands including 
```bash
➜  ~ docker run -it --rm --name helsinki_web ubuntu sh -c "apt update && apt install -y curl && while true; do echo 'Input website:'; read website; echo 'Searching..'; sleep 1; curl http://\$website; done"
```
<img width="427" height="374" alt="Screenshot 2025-07-20 at 0 05 45" src="https://github.com/user-attachments/assets/d416d01a-19a7-443e-b865-88e5dc32d272" />

Another solution is **docker exec**  
```sh
➜  ~ docker exec -it hel_web sh -c "while true; do echo 'Input website:'; read website; echo 'Searching...'; sleep 1; curl http://\$website; done"
```

docker exec                          -->      Run a command in an already running container  
docker exec -it <nameofcontainer> sh -->      Debug or manually inspect inside the running container
