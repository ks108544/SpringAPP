FROM java:8
RUN apt-get clean apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home
ARG arg
 
ADD $arg /home/$arg
ENV filename $arg

CMD    java -jar "/home/$filename"

EXPOSE 8080
