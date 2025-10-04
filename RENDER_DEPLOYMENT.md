# AbhayChat - Render Deployment Guide

## 🚀 Deploy AbhayChat on Render

### Prerequisites
- GitHub repository with your code
- Render account (free tier available)
- MongoDB Atlas account (already configured)

---

## Step 1: Prepare Your Repository

### Required Files (already configured):
- ✅ `render.yaml` - Render configuration
- ✅ `backend/package.json` - Backend dependencies
- ✅ `frontend/package.json` - Frontend dependencies
- ✅ `.gitignore` - Clean repository

---

## Step 2: Deploy AbhayChat Application

### 2.1 Create Web Service
1. Go to [Render Dashboard](https://dashboard.render.com)
2. Click **New +** → **Web Service**
3. Connect your GitHub repository
4. Use the `render.yaml` configuration

### 2.2 Application Configuration
- **Name**: `abhaychat-app`
- **Environment**: `Node`
- **Plan**: `Free` (or `Starter` for better performance)
- **Build Command**: `cd backend && yarn install --production`
- **Start Command**: `cd backend && node index.js`

### 2.3 Environment Variables
```
NODE_VERSION=18.20.4
PORT=4002
PUBLIC_IP_ADDRESS=0.0.0.0
MAPPED_IP=true
AUTH_SECRET=your-secure-secret-key
BASE_URL=https://abhaychat-app.onrender.com
ROOT_USER_USERNAME=admin
ROOT_USER_EMAIL=admin@abhaychat.com
ROOT_USER_PASSWORD=your-secure-password
ROOT_USER_FIRST_NAME=Abhay
ROOT_USER_LAST_NAME=Gupta
MONGO_URI=mongodb+srv://hacky:YHW7zAt9S6s1ABJ7@cluster0.ajesf.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0
MONGO_DATABASE=abhaychat
MAILER_ENABLED=false
```

---

## Step 3: Configure Custom Domain (Optional)

### 4.1 Add Custom Domain
1. Go to your frontend service settings
2. Click **Custom Domains**
3. Add your domain (e.g., `abhaychat.example.com`)
4. Follow DNS configuration instructions

### 4.2 Update Environment Variables
After setting up custom domain, update:
```
VITE_BACKEND_URL=https://your-custom-domain.com
BASE_URL=https://your-custom-domain.com
```

---

## Step 5: Access Your Application

### URLs:
- **Frontend**: `https://abhaychat-frontend.onrender.com`
- **Backend**: `https://abhaychat-backend.onrender.com`
- **Custom Domain**: `https://your-domain.com` (if configured)

### Admin Access:
- **Admin Panel**: `https://your-frontend-url/admin`
- **Username**: `admin`
- **Password**: `your-secure-password`

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

## Render Free Tier Limitations

### Backend Service:
- **Sleeps after 15 minutes** of inactivity
- **Cold start** takes ~30 seconds
- **750 hours/month** free
- **0.1 CPU, 512MB RAM**

### Frontend Service:
- **Always online** (no sleeping)
- **Instant loading**
- **100GB bandwidth/month**
- **Custom domains supported**

---

## Upgrading for Better Performance

### Starter Plan ($7/month):
- **Always online** backend
- **No cold starts**
- **0.5 CPU, 512MB RAM**
- **Custom domains**
- **Better WebRTC performance**

---

## Monitoring & Logs

### Render Dashboard Features:
- **Real-time logs** for both services
- **Deploy history** and rollback
- **Performance metrics**
- **Error tracking**
- **Automatic deployments** on Git push

### Accessing Logs:
1. Go to your service in Render dashboard
2. Click **Logs** tab
3. View real-time application logs

---

## Troubleshooting

### Common Issues:

1. **Backend Sleeps (Free Tier)**:
   - Normal behavior for free tier
   - Takes ~30 seconds to wake up
   - Upgrade to Starter plan to avoid sleeping

2. **WebRTC Issues**:
   - Ensure HTTPS is enabled (automatic on Render)
   - Check if backend is awake before making calls
   - Consider upgrading to Starter plan

3. **Build Failures**:
   - Check build logs in Render dashboard
   - Ensure all dependencies are in package.json
   - Verify Node.js version compatibility

4. **Database Connection**:
   - Verify MongoDB Atlas connection string
   - Check network access settings in MongoDB Atlas
   - Ensure Render IPs are whitelisted (or use 0.0.0.0/0)

---

## Security Recommendations

1. **Change Default Passwords**:
   - Update admin password
   - Use strong AUTH_SECRET
   - Secure MongoDB credentials

2. **Environment Variables**:
   - Never commit secrets to Git
   - Use Render's environment variable system
   - Regularly rotate credentials

---

## Deployment Commands

### Automatic Deployment:
- Push to `main` branch → Automatic deployment
- Manual deployment available in dashboard
- Rollback to previous versions supported

### Manual Deploy:
1. Go to Render dashboard
2. Click **Manual Deploy**
3. Select branch and deploy

---

## Customization Applied

✅ **Application Name**: AbhayChat
✅ **Branding**: Abhay Gupta  
✅ **Color Theme**: Cobalt Blue (#0047AB)
✅ **MongoDB Atlas**: Pre-configured
✅ **Render Configuration**: Production ready
✅ **Environment Variables**: Optimized for Render
✅ **Free Tier Compatible**: Works on free tier

Your AbhayChat application is now ready for deployment on Render! 🎉

---

## Support

- **Render Docs**: https://render.com/docs
- **Render Support**: Available in dashboard
- **MongoDB Atlas**: https://cloud.mongodb.com
