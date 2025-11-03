FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose port (if your app needs it)
# EXPOSE 3000

# Run the application
CMD ["node", "index.js"]

