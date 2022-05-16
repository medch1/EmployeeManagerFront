FROM node:latest as builder
WORKDIR /app
COPY ./package.json /.
COPY ./package-lock.json /.
RUN npm install
COPY . .
RUN npm run build --prod
CMD ["npm","start"]
