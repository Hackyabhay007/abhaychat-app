# AbhayChat Docker Deployment Guide

## 🐳 Docker Setup

### Prerequisites
- Docker installed on your system
- Docker Compose installed
- MongoDB Atlas account (already configured)

### Quick Start

1. **Build and run with Docker Compose:**
   ```bash
   docker-compose up --build
   ```

2. **Run in background:**
   ```bash
   docker-compose up -d --build
   ```

3. **Stop the application:**
   ```bash
   docker-compose down
   ```

### Manual Docker Build

1. **Build the Docker image:**
   ```bash
   docker build -t abhaychat .
   ```

2. **Run the container:**
   ```bash
   docker run -p 4002:4002 \
     -e MONGO_URI="mongodb+srv://hacky:YHW7zAt9S6s1ABJ7@cluster0.ajesf.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0" \
     -e MONGO_DATABASE="abhaychat" \
     -v $(pwd)/data:/app/data \
     abhaychat
   ```

### Environment Variables

The following environment variables are configured:

- **MONGO_URI:** Your MongoDB Atlas connection string
- **MONGO_DATABASE:** abhaychat
- **AUTH_SECRET:** abhaychat-secret-key-2024
- **ROOT_USER_EMAIL:** admin@abhaychat.com
- **ROOT_USER_PASSWORD:** admin123
- **PUBLIC_IP_ADDRESS:** 0.0.0.0 (for Docker)
- **MAPPED_IP:** true (for cloud deployment)

### MongoDB Configuration

Your MongoDB Atlas cluster is configured with:
- **Connection String:** mongodb+srv://hacky:YHW7zAt9S6s1ABJ7@cluster0.ajesf.mongodb.net/
- **Database:** abhaychat
- **Retry Writes:** enabled
- **Write Concern:** majority

### Access the Application

- **Local URL:** http://localhost:4002
- **Admin Login:**
  - Username: `admin`
  - Password: `admin123`
  - Email: `admin@abhaychat.com`

### Docker Commands

```bash
# Build and start
docker-compose up --build

# Start in background
docker-compose up -d

# View logs
docker-compose logs -f

# Stop services
docker-compose down

# Rebuild and restart
docker-compose up --build --force-recreate

# Remove volumes (careful - this deletes data)
docker-compose down -v
```

### Customization Applied

✅ **Application Name:** AbhayChat
✅ **Branding:** Abhay Gupta
✅ **Color Theme:** Cobalt Blue (#0047AB)
✅ **Database:** MongoDB Atlas configured
✅ **Docker:** Multi-stage build optimized
✅ **Environment:** Production ready

### Features Available

- Real-time messaging
- Audio/Video calls with WebRTC
- Group conferencing
- Admin panel
- User management
- File sharing
- Responsive design

### Production Deployment

For production deployment:

1. **Update BASE_URL** in environment variables
2. **Set strong AUTH_SECRET**
3. **Configure SSL/HTTPS**
4. **Set up proper domain name**
5. **Configure firewall for WebRTC ports (10000-12000)**

### Troubleshooting

- **Port conflicts:** Ensure port 4002 is available
- **MongoDB connection:** Check Atlas network access settings
- **WebRTC issues:** Verify public IP configuration
- **Build errors:** Clear Docker cache with `docker system prune`

### Support

Contact: Abhay Gupta
Repository: https://github.com/abhaygupta
