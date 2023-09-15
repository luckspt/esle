# extend the original ubuntu image
FROM ubuntu:22.04

# copy the starting script to the container image
COPY entrypoint.sh /entrypoint.sh

# install ping, iproute and netcat
RUN apt-get update && apt-get install -y iputils-ping iproute2 netcat-traditional

# run the custom script using the sh shell
CMD ["sh", "/entrypoint.sh"]
