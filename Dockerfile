FROM node:10.15 
MAINTAINER sunhengzhe@foxmail.com
COPY . /app/
WORKDIR /app
RUN npm install pm2 -g
EXPOSE 8003
CMD ["pm2-runtime", "ecosystem.config.js"]
