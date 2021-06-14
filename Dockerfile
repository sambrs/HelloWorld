FROM alpine 
WORKDIR /root/hello-world
COPY Employees.java /root/employees

RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

RUN javac Employees.java

ENTRYPOINT java Employees

