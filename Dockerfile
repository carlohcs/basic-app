FROM --platform=linux/amd64 node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 3000

# CMD [ "npm", "run", "start" ]
ENTRYPOINT [ "npm", "run", "start" ]
