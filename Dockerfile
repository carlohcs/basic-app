FROM --platform=linux/amd64 node:22-alpine

# It define a variable to be received as a build argument
ARG APP_IMAGE_VERSION="latest"

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 3000

# Define a env variable based on ARG
ENV APP_IMAGE_VERSION=${APP_IMAGE_VERSION}

ENTRYPOINT [ "sh", "-c", "APP_IMAGE_VERSION=${APP_IMAGE_VERSION} npm run start" ]
