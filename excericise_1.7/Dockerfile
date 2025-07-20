FROM alpine:3.21

#Use /usr/src/app as my work dir.
WORKDIR /usr/src/app

#copy script.sh from this map to the work dir
COPY script.sh .

RUN chmod +x script.sh
 
#Install curl into the container (alpine-vers). Hence we use apk instead of apt install (as in Ubuntu)
RUN apk add --no-cache curl

CMD ./script.sh
