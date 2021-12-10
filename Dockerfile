FROM ubuntu:18.04
RUN apt-get update && apt-get install apache2 -y
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/bin/bash", "entrypoint.sh" ]