# RUN Docker image
# docker build .
# docker run -p 8080:80 <id_container>

# First block (step by step)
# build app
FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN yarn
COPY . .
RUN yarn build # /app/build <- build files

# Second block (after finishing first one)
FROM nginx
# Need for AWS elasticBeanstalk auto mapping port
# and correct work
EXPOSE 80
# copy from prev step
COPY --from=builder /app/build /usr/share/nginx/html
# nginx container run by default after these commands!