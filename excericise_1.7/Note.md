## RUN vs CMD  
when creating a dockerfile i've encountered a confusion in choosing which one I should use: RUN or CMD  
### RUN
* Use during build time
* Execute the command and save the result into the image
* Typical use: Installing packages, copying files, or configuring softwares into the container.
### CMD
* Use when running the container
* define the default command that runs when the container starts

## Other notes  
* Dockerfile and the script need to be at the same place
* Debug inside the container by using the following command:
```sh
docker run -it --entrypoint /bin/sh <name_of_the_container>
```

