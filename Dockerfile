FROM node:24.16.0

RUN apt-get update && apt-get install -y git

COPY package.json package-lock.json /opt/prettier-deps/
RUN cd /opt/prettier-deps && npm ci \
  && ln -s /opt/prettier-deps/node_modules/.bin/prettier /usr/local/bin/prettier

ENV PRETTIER_DEPS=/opt/prettier-deps/node_modules

WORKDIR /workspace

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
