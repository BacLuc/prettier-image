FROM node:24.14.1

RUN apt-get update && apt-get install -y git

# renovate: datasource=npm depName=prettier
ENV PRETTIER_VERSION=3.8.1

RUN npm install -g prettier@${PRETTIER_VERSION}

WORKDIR /workspace

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
