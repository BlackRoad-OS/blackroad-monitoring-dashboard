# Cloudflare Pages Deployment Guide

## Repository Status
✅ **GitHub Repository**: https://github.com/BlackRoad-OS/blackroad-monitoring-dashboard
✅ **Code Pushed**: 2 commits, main branch
✅ **GitHub Actions Workflow**: Configured (requires secrets)

## Deployment Options

### Option 1: Cloudflare Dashboard (Recommended - No Secrets Needed)

1. **Go to Cloudflare Dashboard**
   - Navigate to: https://dash.cloudflare.com/
   - Go to: Workers & Pages → Pages

2. **Create New Project**
   - Click "Create application" → "Pages" → "Connect to Git"
   - Select GitHub repository: `BlackRoad-OS/blackroad-monitoring-dashboard`

3. **Configure Build Settings**
   - **Project name**: `blackroad-monitoring-dashboard`
   - **Production branch**: `main`
   - **Framework preset**: None
   - **Build command**: (leave empty)
   - **Build output directory**: `/`
   - **Root directory**: `/`

4. **Deploy**
   - Click "Save and Deploy"
   - Wait for deployment (~30 seconds)
   - Dashboard will be live at: `https://blackroad-monitoring-dashboard.pages.dev`

### Option 2: GitHub Actions (Requires Secrets)

The repository already has a GitHub Actions workflow configured at `.github/workflows/deploy.yml`.

**Required Secrets** (in GitHub repo settings):
1. `CLOUDFLARE_API_TOKEN` - Get from Cloudflare Dashboard → My Profile → API Tokens
2. `CLOUDFLARE_ACCOUNT_ID` - Get from Cloudflare Dashboard → Workers & Pages → Overview

**To set up**:
1. Go to: https://github.com/BlackRoad-OS/blackroad-monitoring-dashboard/settings/secrets/actions
2. Add the two secrets above
3. Push any commit to trigger deployment

### Option 3: Manual Wrangler CLI (Requires Auth)

```bash
# Login to Cloudflare
wrangler login

# Deploy
cd /tmp/blackroad-monitoring-dashboard
wrangler pages deploy . --project-name=blackroad-monitoring-dashboard
```

## Current Status

✅ **Repository**: Created and pushed to GitHub
✅ **Workflow**: GitHub Actions configured
⏳ **Deployment**: Pending Cloudflare connection
⏳ **Live URL**: Will be `https://blackroad-monitoring-dashboard.pages.dev`

## Next Steps

**Recommended**: Use Option 1 (Cloudflare Dashboard) for easiest setup:

1. Open: https://dash.cloudflare.com/
2. Workers & Pages → Pages → Connect to Git
3. Select: `BlackRoad-OS/blackroad-monitoring-dashboard`
4. Deploy with default settings
5. Access live dashboard!

## Testing After Deployment

Once deployed, verify:
- [ ] Dashboard loads at `https://blackroad-monitoring-dashboard.pages.dev`
- [ ] All 6 sections render correctly
- [ ] Status indicators are animated
- [ ] Auto-refresh works (every 30s)
- [ ] Mobile responsive layout
- [ ] All data displays properly

## Updating the Dashboard

After initial deployment, any push to the `main` branch will automatically trigger a new deployment (if GitHub Actions secrets are configured, or if using Cloudflare Git integration).

```bash
# Make changes
cd /tmp/blackroad-monitoring-dashboard
# Edit files...
git add .
git commit -m "Update dashboard"
git push

# Deployment happens automatically!
```

---

**Ready for deployment!** 🚀

The dashboard is production-ready and waiting for you to connect it to Cloudflare Pages via the dashboard.
