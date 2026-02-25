FROM node:20-alpine
WORKDIR /frontend
COPY package*.json ./
RUN npm install\
    npm run build
COPY . .
EXPOSE 3000
CMD ["npm", "start"]