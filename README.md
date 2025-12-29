# BlackRoad Unified Monitoring Dashboard

Real-time monitoring dashboard for all BlackRoad infrastructure, services, and agents.

## Features

- **Infrastructure Monitoring**: 5 nodes (octavia, lucidia, alice, aria, shellfish)
- **Service Health**: 12+ deployed services across multiple ports
- **GitHub Activity**: 15 organizations, 66+ repositories, 59k files
- **Cloudflare Status**: 16 zones, 8 Pages, 8 KV, 1 D1
- **Claude Agents**: Task marketplace, active agents, collaboration
- **Memory System**: Session tracking, 612+ journal entries
- **Activity Log**: Real-time activity feed

## Architecture

### Technology Stack
- Pure HTML5 + Vanilla JavaScript (no build step)
- BlackRoad design system (golden ratio spacing, gradient colors)
- Auto-refresh every 30 seconds
- Fully responsive design

### Systems Monitored

#### Infrastructure Nodes
1. **octavia** (192.168.4.74) - Build hub with 1.8TB SSD
2. **lucidia** (192.168.4.38) - Production web server
3. **alice** (192.168.4.49) - Pi node
4. **aria** (192.168.4.64) - Pi node
5. **shellfish** (174.138.44.45) - DigitalOcean VPS

#### Deployed Services (on lucidia)
- Port 3000: blackroad.io (Auth Gateway)
- Port 3001: blackroad.company
- Port 3002: carpool.blackroad.io (Multi-Agent System)
- Port 3003: blackroad.me
- Port 3004: blackroad.network
- Port 3005: blackroad.systems
- Port 3006: blackroadai.com
- Port 3007: blackroadinc.us
- Port 3008: blackroadqi.com
- Port 3009: blackroadquantum.com
- Port 8081: os.blackroad.io (Ultimate Modern OS)
- Port 3109: metaverse.blackroad.io (Lucidia Metaverse)

#### GitHub Organizations
BlackRoad-OS, BlackRoad-AI, BlackRoad-Cloud, BlackRoad-Security, BlackRoad-Labs, BlackRoad-Education, BlackRoad-Foundation, BlackRoad-Gov, BlackRoad-Hardware, BlackRoad-Interactive, BlackRoad-Media, BlackRoad-Studio, BlackRoad-Ventures, Blackbox-Enterprises, BlackRoad-Archive

#### Cloudflare Infrastructure
- 16 DNS zones
- 8 Pages deployments
- 8 KV namespaces
- 1 D1 database

## Deployment

### Local Testing
```bash
# Open in browser
open index.html
```

### Deploy to Cloudflare Pages

```bash
# Deploy using Wrangler
wrangler pages deploy . --project-name=blackroad-monitoring-dashboard

# Or use git-based deployment
git init
git add .
git commit -m "Initial monitoring dashboard"
git remote add origin https://github.com/BlackRoad-OS/blackroad-monitoring-dashboard.git
git push -u origin main

# Then connect to Cloudflare Pages via dashboard
```

### Manual Cloudflare Pages Deployment
1. Go to Cloudflare Dashboard → Pages
2. Create new project
3. Upload files: index.html, dashboard.js
4. Set build settings:
   - Build command: (none)
   - Build output directory: /
5. Deploy!

## Design System

### Colors
- **Amber**: #F5A623
- **Hot Pink**: #FF1D6C
- **Violet**: #9C27B0
- **Electric Blue**: #2979FF
- **Gradient**: 135deg, amber 0%, hot-pink 38.2%, violet 61.8%, electric-blue 100%

### Spacing (Golden Ratio φ=1.618)
- xs: 8px
- sm: 13px
- md: 21px
- lg: 34px
- xl: 55px

### Status Indicators
- 🟢 Green: Healthy/Online
- 🟡 Yellow: Degraded/Warning
- 🔴 Red: Down/Error

## Future Enhancements

### Phase 2
- [ ] Real HTTP health checks to infrastructure nodes
- [ ] Docker API integration for live container status
- [ ] GitHub API integration for real-time repo stats
- [ ] Cloudflare API for live zone/deployment status
- [ ] WebSocket for real-time updates (no polling)

### Phase 3
- [ ] Historical metrics and charts
- [ ] Alert system for downtime
- [ ] Performance metrics (CPU, RAM, disk)
- [ ] Network topology visualization
- [ ] Agent activity heatmap

### Phase 4
- [ ] Mobile app (React Native)
- [ ] Slack/Discord notifications
- [ ] Predictive analytics
- [ ] Auto-healing triggers
- [ ] Multi-tenant dashboard

## Files

- `index.html` - Main dashboard HTML
- `dashboard.js` - Dashboard logic and data loading
- `wrangler.toml` - Cloudflare Pages configuration
- `README.md` - This file

## Maintenance

The dashboard auto-refreshes every 30 seconds. No manual intervention needed.

To update monitored services, edit the constants in `dashboard.js`:
- `INFRASTRUCTURE_NODES`
- `DEPLOYED_SERVICES`
- `GITHUB_ORGS`

## License

Part of the BlackRoad ecosystem. See main repository for license.

## Links

- **Live Dashboard**: https://blackroad-monitoring-dashboard.pages.dev (after deployment)
- **GitHub**: https://github.com/BlackRoad-OS/blackroad-monitoring-dashboard
- **Main Site**: https://blackroad.io

---

Built with ❤️ by BlackRoad Claude Agents
