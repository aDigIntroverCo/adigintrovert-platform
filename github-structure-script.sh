#!/bin/bash

echo "Setting up aDIGINTROVERT platform structure..."

# Top-level directories and key subfolders
dirs=(
  campaigns/active
  campaigns/completed
  campaigns/templates/social-media
  campaigns/templates/email
  campaigns/templates/ppc
  campaigns/templates/content

  client-deliverables/final-assets
  client-deliverables/reports
  client-deliverables/presentations
  client-deliverables/strategy-documents

  content/blog-articles
  content/case-studies
  content/whitepapers
  content/copywriting/ad-copy
  content/copywriting/email-copy
  content/copywriting/social-copy
  content/copywriting/web-copy

  creative-assets/ad-creatives/display
  creative-assets/ad-creatives/video
  creative-assets/ad-creatives/social
  creative-assets/ad-creatives/print
  creative-assets/brand-materials/logos
  creative-assets/brand-materials/style-guides
  creative-assets/brand-materials/typography
  creative-assets/brand-materials/color-systems
  creative-assets/client-assets
  creative-assets/media-library/photography
  creative-assets/media-library/audio
  creative-assets/media-library/video
  creative-assets/media-library/graphics

  digital-properties/websites/client-sites
  digital-properties/websites/landing-pages
  digital-properties/websites/microsites
  digital-properties/web-applications
  digital-properties/mobile-apps/ios
  digital-properties/mobile-apps/android
  digital-properties/mobile-apps/hybrid

  internal-operations/automation
  internal-operations/documentation
  internal-operations/processes
  internal-operations/tools
  internal-operations/workflows

  research-insights/market-research
  research-insights/performance-data
  research-insights/audience-insights
  research-insights/competitor-analysis

  standards/brand-guidelines
  standards/file-organization
  standards/naming-conventions
  standards/approval-workflows
  standards/quality-standards
)

# Create directories and placeholder files
for d in "${dirs[@]}"; do
  mkdir -p "$d"
  touch "$d/.gitkeep"
done

# Main directory readmes
main_dirs=(
  campaigns
  client-deliverables
  content
  creative-assets
  digital-properties
  internal-operations
  research-insights
  standards
)

for m in "${main_dirs[@]}"; do
  echo "# $m" > "$m/README.md"
done

# Professional root README.md
cat > README.md << 'EOF'
# aDIGINTROVERT Platform

Welcome to the professional marketing and digital operations platform for aDigitrovert!

## 📁 Repository Structure

- `campaigns/` — Campaign management and templates
- `client-deliverables/` — Client reports, assets, strategies
- `content/` — Blog articles, case studies, and copywriting
- `creative-assets/` — Ads, brand materials, and media library
- `digital-properties/` — All web/mobile assets and apps
- `internal-operations/` — Workflows, automation, internal docs
- `research-insights/` — Market research, performance data, competitor insights
- `standards/` — Brand and quality standards

## 🚀 Quick Start

\`\`\`bash
git clone https://github.com/aDigIntroverCo/adigintrovert-platform.git
cd adigintrovert-platform
\`\`\`

See each directory’s \`README.md\` for more info.

---

## 👥 Contributors

- [David Vieira](mailto:info@adigintrovert.com)

---

## 🛡️ License

Copyright © 2024 aDIGINTROVERT.  
All Rights Reserved.
EOF

# .gitignore
cat > .gitignore << 'EOF'
# macOS
.DS_Store
.AppleDouble
.LSOverride

# Node
node_modules/
npm-debug.log*

# Python
__pycache__/
*.py[cod]

# Logs
*.log

# Others
*.env
*.bak
*.tmp
EOF

# All Rights Reserved LICENSE
cat > LICENSE << 'EOF'
Copyright © 2024 aDIGINTROVERT. All Rights Reserved.

This work is proprietary and confidential. Unauthorized copying, modification, distribution, or any other use is strictly prohibited without the prior written consent of aDIGINTROVERT.
EOF

# Git add, commit, and push
git add .
git commit -m "Setup: Standard professional repo structure, documentation, and All Rights Reserved license"
git push origin main

echo "✅ Structure, documentation, and All Rights Reserved LICENSE set up and pushed!"