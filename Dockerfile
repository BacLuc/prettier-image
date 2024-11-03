FROM node:22.11.0

RUN npm install -g prettier@3.3.3

WORKDIR /workspace

CMD ["prettier", "--write", "**/*.{js,jsx,ts,tsx,html,css,md,json,yaml,yml}"]
