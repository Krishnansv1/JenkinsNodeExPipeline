FROM node:16.13.1
#ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["package.json", "./"]
RUN npm install --silent
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
