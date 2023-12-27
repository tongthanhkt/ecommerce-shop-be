FROM node:18-alpine

WORKDIR /app

COPY . .
RUN npm install
EXPOSE 3000

CMD [ "node", "index.js" ]

# docker build -t be-ecommerce-shop .

# PORT CONTAINER TO PORT HOST = > 3000
# docker run -dp 127.0.0.1:3000:3000 be-ecommerce-shop

## Docker list container: docker ps 

## Docker image container: docker image ls

## Docker stop: docker stop 65c2250d208d

## Docker restart: docker restart 65c2250d208d

## Docker remove: docker rermove 65c2250d208d

## Docker create tag image to push: docker tag be-ecommerce-shop tongthanhkt/be-ecommerce-shop


## Part 5: Persist the database 