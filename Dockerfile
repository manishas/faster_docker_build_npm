ARG IMAGE=
ARG TAG=
FROM ${IMAGE}:${TAG}

# Add our configuration files and scripts
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 80

ENTRYPOINT ["/nodejs/bin/npm", "start"]
