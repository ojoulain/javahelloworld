FROM java:7
ENV FOO Coucou
WORKDIR /home/root/javahelloworld
COPY src /home/root/javahelloworld/src
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update
RUN apt-get install -y vim
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
