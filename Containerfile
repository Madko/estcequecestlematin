FROM docker.io/node AS BUILD

WORKDIR /app
COPY . .

RUN npm install
RUN npm run build

FROM docker.io/nginx 
MAINTAINER madko77@gmail.com

COPY --from=BUILD /app/dist /usr/share/nginx/html
