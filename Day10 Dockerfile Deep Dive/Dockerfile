# 1️⃣ Base image
FROM node:18-alpine

# 2️⃣ Set working directory
WORKDIR /app

# 3️⃣ Copy package.json & install dependencies
COPY package*.json ./
RUN npm install

# 4️⃣ Copy app files
COPY . .

# 5️⃣ Set environment variables
ENV APP_PORT=4000
ENV MESSAGE="Welcome to Day 11 of DevOps Challenge!"

# 6️⃣ Expose port
EXPOSE ${APP_PORT}

# 7️⃣ Define the command
CMD ["npm", "start"]
