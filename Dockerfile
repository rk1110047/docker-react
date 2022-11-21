FROM node:alpine as nodecontainer
WORKDIR /opt/docker-rnd/react-docker-conf
COPY ./package.json .
COPY . .
RUN npm install
RUN npm run start
#RUN npm run build


#FROM nginx:alpine
#COPY --from=nodecontainer opt/docker-rnd/react-docker-conf/build /usr/share/nginx/html