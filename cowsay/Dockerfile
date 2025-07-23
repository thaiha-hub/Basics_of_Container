#Start with the Operative System
FROM ubuntu:22.04
#Install application dependencies
RUN apt udate && apt install -y cowsay
#run the application
CMD ["/usr/games/cowsay", "Hello from my custom cowsay"]
