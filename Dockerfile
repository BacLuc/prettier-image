FROM node:22.22.2

RUN apt-get update && apt-get install -y git

# renovate: datasource=npm depName=prettier
ENV PRETTIER_VERSION=3.3.3

RUN npm install -g prettier@${PRETTIER_VERSION}

WORKDIR /workspace

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
