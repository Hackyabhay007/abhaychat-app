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
COPY backend/package.json backend/yarn.lock ./
COPY frontend/package.json frontend/yarn.lock ./frontend/

# Install dependencies and rebuild native modules
RUN yarn install --frozen-lockfile
RUN yarn rebuild argon2
RUN cd frontend && yarn install --frozen-lockfile

# Copy source code
COPY backend/ ./
COPY frontend/ ./frontend/

# Build frontend
RUN cd frontend && yarn build

# Create data directory
RUN mkdir -p ./data

# Expose port
EXPOSE 4002

# Set environment variables
ENV NODE_ENV=production
ENV PORT=4002

# Start the application
CMD ["node", "index.js"]
