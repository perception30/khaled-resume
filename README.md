# Khaled's Resume - GitHub Pages Site

Your resume is now live at: **https://perception30.github.io/khaled-resume/**

## 🚀 Features

- **Auto-deployment**: Changes to the markdown file automatically deploy in ~10 seconds
- **Elegant Design**: Dark terminal-inspired theme with Courier New typography
- **Responsive**: Works on all devices
- **Fast**: Uses simple gh-pages branch deployment (no complex Actions)

## 📝 How to Update Your Resume

1. Edit `Resume of Khaled Bin A Quadir.md`
2. Commit and push:
   ```bash
   git add -A
   git commit -m "Update resume"
   git push
   ```
3. Your site updates automatically in ~10 seconds!

## 🔧 Local Development

To preview changes before pushing:

```bash
./watch.sh
```

This will:
- Start a local server at http://localhost:8000
- Open your browser automatically
- Watch for changes to your resume file

## 📂 Project Structure

- `Resume of Khaled Bin A Quadir.md` - Your resume content
- `index.html` - Renders the markdown with styling
- `.github/workflows/deploy.yml` - Simple auto-deployment (8 seconds)
- `watch.sh` - Local development server

## ⚡ Why It's Fast Now

Instead of complex GitHub Actions Pages deployment (which was taking forever), we now use a simple approach:
- Push directly to gh-pages branch
- GitHub serves it immediately
- Deployment takes ~8 seconds instead of getting stuck

## 🎨 Customization

To change the styling, edit the CSS in `index.html`. The current theme features:
- Dark background with cyan accents
- Terminal-style heading prefixes
- Glowing border effects
- Courier New font throughout