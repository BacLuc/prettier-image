FROM node:22.11.0

RUN apt-get update && apt-get install -y git

RUN npm install -g prettier@3.3.3

WORKDIR /workspace

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
