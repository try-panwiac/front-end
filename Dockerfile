FROM node:10-alpine
ENV NODE_ENV "production"
ENV PORT 8079
EXPOSE 8079
ENV MYSQL_HOST="DB_Server"
ENV MYSQL_USER="operations"
ENV MYSQL_PASSWORD="5TTnvuTDJJSq6"
ENV PC_ACCESS_KEY="5bc024ae-76b6-45f4-99e6-51b8453804d3"
ENV PC_SECRET="qO1Z82jmdZHEm0YW6BAYsnEHat0="
RUN addgroup mygroup && adduser -D -G mygroup myuser && mkdir -p /usr/src/app && chown -R myuser /usr/src/app

# Prepare app directory
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
COPY yarn.lock /usr/src/app/
RUN chown myuser /usr/src/app/yarn.lock

USER myuser
RUN yarn install

COPY . /usr/src/app

# Start the app
CMD ["/usr/local/bin/npm", "start"]
