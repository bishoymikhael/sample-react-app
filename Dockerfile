FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package manifests first to install dependencies
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm i --verbose

# Copy app sources
COPY . .

# Expose Vite default dev port
EXPOSE 5173

# Ensure Vite listens on all interfaces
ENV HOST 0.0.0.0

# Start dev server and force host/port so container is reachable
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "5173"]
