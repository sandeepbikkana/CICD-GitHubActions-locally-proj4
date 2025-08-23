# Example Node.js app (replace with your stack if different)
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --only=production

COPY . .

EXPOSE 3000
CMD ["npm", "start"]
