FROM node:8
EXPOSE 8080
COPY server.js .
CMD node server.js
ADD https://get.aquasec.com/microscanner /
RUN chmod +x /microscanner
