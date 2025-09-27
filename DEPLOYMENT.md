# Deployment Guide

## 🚀 Deploy to Vercel

### Step 1: Create GitHub Repository

1. Go to [GitHub.com](https://github.com) and sign in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Repository name: `portfolio` (or your preferred name)
5. Description: "Personal portfolio website"
6. Make it **Public** (required for free Vercel deployment)
7. **Don't** initialize with README (we already have one)
8. Click "Create repository"

### Step 2: Push Code to GitHub

Run these commands in your terminal:

```bash
# Add GitHub remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/portfolio.git

# Push to GitHub
git push -u origin main
```

### Step 3: Deploy to Vercel

1. Go to [Vercel.com](https://vercel.com) and sign in
2. Click "New Project"
3. Import your GitHub repository
4. Vercel will automatically detect it's a static site
5. Click "Deploy"
6. Your site will be live in minutes!

### Step 4: Custom Domain (Optional)

1. In Vercel dashboard, go to your project
2. Click "Settings" > "Domains"
3. Add your custom domain
4. Follow Vercel's instructions to configure DNS

## 🔄 Updating Your Portfolio

### To update your portfolio:

1. Make changes to your files
2. Commit changes:
   ```bash
   git add .
   git commit -m "Update portfolio content"
   git push
   ```
3. Vercel will automatically redeploy your site!

### To update your resume:

1. Replace `assets/resume/Vaibhav_Gaur_Resume.pdf` with your new resume
2. Update the file size in `config.js` if needed
3. Commit and push:
   ```bash
   git add assets/resume/Vaibhav_Gaur_Resume.pdf
   git commit -m "Update resume"
   git push
   ```

## 📁 File Structure for Easy Updates

```
portfolio/
├── assets/
│   ├── resume/           # ← Replace PDF here
│   ├── images/           # ← Add photos here
│   └── icons/            # ← Add custom icons here
├── config.js             # ← Update personal info here
├── index.html            # ← Main content
├── styles.css            # ← Styling
└── script.js             # ← Functionality
```

## 🎨 Customization Made Easy

### Update Personal Information:
Edit `config.js`:
```javascript
personal: {
    name: "Your Name",
    title: "Your Title",
    email: "your.email@example.com",
    // ... other info
}
```

### Update Resume:
1. Replace PDF in `assets/resume/`
2. Update filename in `config.js` if needed

### Add Profile Photo:
1. Add image to `assets/images/`
2. Update HTML to reference the image

## 🌐 Your Live URLs

After deployment, your portfolio will be available at:
- **Vercel**: `https://your-repo-name.vercel.app`
- **Custom Domain**: `https://yourdomain.com` (if configured)

## 📱 Testing

Test your deployed site on:
- Desktop browsers
- Mobile devices
- Different screen sizes
- Download functionality (resume)

## 🆘 Troubleshooting

### Common Issues:

1. **Resume not downloading**: Check file path in HTML
2. **Images not loading**: Verify file paths and names
3. **Styling issues**: Check CSS file is linked correctly
4. **Mobile issues**: Test responsive design

### Getting Help:

- Check Vercel deployment logs
- Verify all files are committed to GitHub
- Test locally first with `python3 -m http.server 8000`

---

🎉 **Congratulations!** Your portfolio is now live and easily maintainable!
