# AbhayChat - Dokploy Deployment Guide

## 🚀 Deploy AbhayChat on Dokploy

### Prerequisites
- Ubuntu server (20.04 LTS or newer)
- Domain name pointed to your server IP
- MongoDB Atlas account (already configured)

---

## Step 1: Install Dokploy

```bash
# Install Docker (if not already installed)
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Install Dokploy
curl -sSL https://dokploy.com/install.sh | sh
```

After installation, access Dokploy at: `http://your-server-ip:3000`

---

## Step 2: Configure Dokploy Dashboard

1. **Access Dashboard**: Go to `http://your-server-ip:3000`
2. **Initial Setup**: Complete the initial configuration
3. **Domain Setup**: Configure your domain in the Web Server section
4. **Enable HTTPS**: Select "HTTPS with Let's Encrypt" for SSL

---

## Step 3: Prepare Your Repository

### Required Files (already configured):
- ✅ `docker-compose.yml` - Dokploy optimized
- ✅ `Dockerfile` - Multi-stage build
- ✅ `.dockerignore` - Optimized context
- ✅ `.gitignore` - Clean repository

### Key Changes Made:
- **Network**: Uses `dokploy-network` (external)
- **Volumes**: Named volume for data persistence
- **Environment**: Production-ready variables
- **Restart Policy**: `always` for reliability

---

## Step 4: Deploy in Dokploy

### 4.1 Connect Repository
1. Go to **Compose** section in Dokploy
2. Click **New Project**
3. Connect your Git repository
4. Select the branch (usually `main`)

### 4.2 Configure Build
- **Build Context**: `/` (root directory)
- **Docker Compose File**: `docker-compose.yml`
- **Environment**: Production

### 4.3 Environment Variables
Set these in Dokploy's Environment tab:

```
NODE_ENV=production
PORT=4002
PUBLIC_IP_ADDRESS=0.0.0.0
MAPPED_IP=true
AUTH_SECRET=your-secure-secret-key-here
BASE_URL=https://your-domain.com
ROOT_USER_USERNAME=admin
ROOT_USER_EMAIL=admin@yourdomain.com
ROOT_USER_PASSWORD=secure-admin-password
ROOT_USER_FIRST_NAME=Abhay
ROOT_USER_LAST_NAME=Gupta
MONGO_URI=mongodb+srv://hacky:YHW7zAt9S6s1ABJ7@cluster0.ajesf.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0
MONGO_DATABASE=abhaychat
MAILER_ENABLED=false
```

### 4.4 Deploy
1. Click **Save** to save configuration
2. Click **Deploy** to start deployment
3. Monitor logs in real-time

---

## Step 5: Configure Domain & SSL

### 5.1 Add Domain
1. Go to **Domains** tab
2. Select your `abhaychat` service
3. Enter your domain name
4. Enable **HTTPS with Let's Encrypt**
5. Click **Save**

### 5.2 Update Environment
After domain is configured, update:
```
BASE_URL=https://your-actual-domain.com
```

---

## Step 6: Access Your Application

- **Main App**: `https://your-domain.com`
- **Admin Panel**: `https://your-domain.com/admin`

### Default Admin Credentials:
- **Username**: `admin`
- **Password**: `secure-admin-password` (or what you set)
- **Email**: `admin@yourdomain.com`

---

## Features Available

✅ **Real-time Messaging**
✅ **Audio/Video Calls**
✅ **Group Conferencing**
✅ **File Sharing**
✅ **User Management**
✅ **Admin Panel**
✅ **Responsive Design**
✅ **MongoDB Atlas Integration**

---

## Monitoring & Maintenance

### Dokploy Dashboard Features:
- **Real-time Logs**: Monitor application logs
- **Resource Usage**: CPU, Memory, Network
- **Automatic Restarts**: If container fails
- **SSL Auto-renewal**: Let's Encrypt certificates
- **Backup Management**: Volume data backup

### Updates:
1. Push changes to Git repository
2. Go to Dokploy dashboard
3. Click **Deploy** to update application
4. Zero-downtime deployment

---

## Troubleshooting

### Common Issues:

1. **Build Failures**:
   - Check Dockerfile syntax
   - Verify all files are in repository
   - Check build logs in Dokploy

2. **Database Connection**:
   - Verify MongoDB Atlas connection string
   - Check network access in MongoDB Atlas
   - Ensure IP is whitelisted

3. **Domain Issues**:
   - Verify DNS propagation
   - Check SSL certificate status
   - Ensure domain points to server IP

4. **WebRTC Issues**:
   - Verify HTTPS is enabled
   - Check firewall settings for ports 10000-12000
   - Ensure public IP is configured correctly

---

## Security Recommendations

1. **Change Default Passwords**:
   - Update admin password
   - Use strong AUTH_SECRET
   - Secure MongoDB credentials

2. **Firewall Configuration**:
   - Allow ports 22 (SSH), 80 (HTTP), 443 (HTTPS)
   - Allow ports 10000-12000 for WebRTC
   - Restrict access to port 3000 (Dokploy dashboard)

3. **Regular Updates**:
   - Keep Dokploy updated
   - Update application dependencies
   - Monitor security advisories

---

## Support

- **Dokploy Docs**: https://docs.dokploy.com
- **Application Issues**: Check logs in Dokploy dashboard
- **MongoDB Issues**: MongoDB Atlas support

---

## Customization Applied

✅ **Application Name**: AbhayChat
✅ **Branding**: Abhay Gupta  
✅ **Color Theme**: Cobalt Blue (#0047AB)
✅ **Docker Configuration**: Dokploy optimized
✅ **MongoDB Atlas**: Pre-configured
✅ **SSL/HTTPS**: Let's Encrypt ready
✅ **Domain Configuration**: Production ready

Your AbhayChat application is now ready for professional deployment on Dokploy! 🎉
