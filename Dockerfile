# Use Node.js 18 Alpine image
FROM node:18-alpine

# Install build dependencies for mediasoup and argon2
RUN apk add --no-cache \
    python3 \
    py3-pip \
    make \
    g++ \
    gcc \
    linux-headers

# Set working directory
WORKDIR /app

# Copy package files
COPY backend/package.json ./
COPY frontend/package.json ./frontend/

# Install dependencies and rebuild native modules
RUN npm install --only=production
RUN rm -rf node_modules/argon2 && npm install argon2@0.31.2
RUN cd frontend && npm install

# Copy source code
COPY backend/ ./
COPY frontend/ ./frontend/

# Build frontend
RUN cd frontend && npm run build

# Create data directory
RUN mkdir -p ./data

# Expose port
EXPOSE 4002

# Set environment variables
ENV NODE_ENV=production
ENV PORT=4002

# Start the application
CMD ["node", "index.js"]
