FROM node:latest

WORKDIR /app

COPY . .
RUN rm -r node_modules
RUN npm install


EXPOSE 3000

CMD [ "npm", "start" ]

# docker build -t ecommerce-app .
# docker restart name