FROM andreyhoffmann/gopine:latest

ENV GOPATH=/go
ADD /app go/src/app
ADD /commands go/src/app
RUN chmod -R  777 /go/src/app 
WORKDIR /go/src/app
RUN  /bin/bash install.sh

CMD ["/bin/bash","run.sh"]