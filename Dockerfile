FROM node:lts-alpine

WORKDIR /app

COPY package*.json /app/
RUN npm install

COPY . /app
RUN npm run build

EXPOSE 80

CMD ["npm", "run", "serve", "--", "--host", "0.0.0.0", "--port", "80"]
