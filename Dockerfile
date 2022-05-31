FROM node:16.13-bullseye-slim
WORKDIR /app

# CURL installation for healthcheck
RUN apt update && apt install curl -y && rm -rf /var/lib/apt/lists/*

# Vue CLI installation
RUN npm install -g @vue/cli

# Copy all sources files
COPY ./src ./

# Expose Server Port
EXPOSE 8080

# Development launch command
CMD ["npm", "run", "serve", "--fix"]
