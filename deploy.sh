#!/bin/bash

# BlackRoad Monitoring Dashboard Deployment Script

echo "🚀 BlackRoad Monitoring Dashboard Deployment"
echo "=============================================="
echo ""

# Check if wrangler is installed
if ! command -v wrangler &> /dev/null; then
    echo "❌ Error: wrangler is not installed"
    echo "Install with: npm install -g wrangler"
    exit 1
fi

echo "📦 Deploying to Cloudflare Pages..."
echo ""

# Deploy to Cloudflare Pages
wrangler pages deploy . --project-name=blackroad-monitoring-dashboard

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Dashboard deployed successfully!"
    echo ""
    echo "🌐 Access your dashboard at:"
    echo "   https://blackroad-monitoring-dashboard.pages.dev"
    echo ""
else
    echo ""
    echo "❌ Deployment failed"
    echo ""
    echo "Manual deployment options:"
    echo "1. Use Cloudflare Dashboard → Pages → Upload files"
    echo "2. Connect GitHub repo for automatic deployments"
    echo "3. Check authentication: wrangler login"
    echo ""
fi
