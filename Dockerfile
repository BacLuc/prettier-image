FROM node:24.15.0

RUN apt-get update && apt-get install -y git

# renovate: datasource=npm depName=prettier
ENV PRETTIER_VERSION=3.8.3

RUN npm install -g prettier@${PRETTIER_VERSION}

WORKDIR /workspace

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
