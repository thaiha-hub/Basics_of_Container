I run the image defined in the Dockerfile and call it my-cowsay
```sh
docker run my-cowsay
```
<img width="464" height="288" alt="image" src="https://github.com/user-attachments/assets/807f710b-ab4d-4a12-9f95-af1e1809750f" /> 

If I want to change the message inside the image, then i need to use the followning command:
```sh
docker run /usr/games/cowsay "New message"
```
