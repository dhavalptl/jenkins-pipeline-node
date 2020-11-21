FROM node:14-slim
ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
ARG PORT=4000
ENV PORT=${PORT}
EXPOSE ${PORT}
RUN mkdir /usr/src/app && chown node:node /usr/src/app
WORKDIR /usr/src/app
USER node
COPY package*.json ./
RUN npm install --no-optional --silent
COPY . .
CMD [ "node", "server.js" ] 
