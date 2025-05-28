#!/bin/bash

set -e

echo "🔧 Setting up the aDIGINTROVERT platform repository structure..."

# --- Directory structure with descriptions ---
declare -A descriptions=(
  ["campaigns/active"]="Active marketing campaigns currently in progress."
  ["campaigns/completed"]="Archives of completed marketing campaigns."
  ["campaigns/templates/content"]="Templates for content marketing campaigns."
  ["campaigns/templates/email"]="Email marketing campaign templates."
  ["campaigns/templates/ppc"]="Pay-per-click advertising templates."
  ["campaigns/templates/social-media"]="Social media campaign templates."
  ["client-deliverables/final-assets"]="Finalized assets delivered to clients."
  ["client-deliverables/presentations"]="Client presentation materials."
  ["client-deliverables/reports"]="Reports provided to clients."
  ["client-deliverables/strategy-documents"]="Strategic planning documents for clients."
  ["content/blog-articles"]="Published blog articles."
  ["content/case-studies"]="Detailed case studies of past projects."
  ["content/copywriting/ad-copy"]="Advertisement copywriting materials."
  ["content/copywriting/email-copy"]="Email copywriting content."
  ["content/copywriting/social-copy"]="Social media copywriting content."
  ["content/copywriting/web-copy"]="Website copywriting content."
  ["content/whitepapers"]="In-depth whitepapers and research documents."
  ["creative-assets/ad-creatives/display"]="Display advertisement creatives."
  ["creative-assets/ad-creatives/print"]="Print advertisement creatives."
  ["creative-assets/ad-creatives/social"]="Social media advertisement creatives."
  ["creative-assets/ad-creatives/video"]="Video advertisement creatives."
  ["creative-assets/brand-materials/color-systems"]="Brand color system guidelines."
  ["creative-assets/brand-materials/logos"]="Official logo files."
  ["creative-assets/brand-materials/style-guides"]="Comprehensive brand style guides."
  ["creative-assets/brand-materials/typography"]="Typography guidelines and resources."
  ["creative-assets/client-assets"]="Assets provided by clients."
  ["creative-assets/media-library/audio"]="Audio files for various projects."
  ["creative-assets/media-library/graphics"]="Graphic assets and illustrations."
  ["creative-assets/media-library/photography"]="Photographic assets."
  ["creative-assets/media-library/video"]="Video assets and footage."
  ["digital-properties/mobile-apps/android"]="Android mobile application projects."
  ["digital-properties/mobile-apps/hybrid"]="Hybrid mobile application projects."
  ["digital-properties/mobile-apps/ios"]="iOS mobile application projects."
  ["digital-properties/web-applications"]="Web application projects."
  ["digital-properties/websites/client-sites"]="Websites developed for clients."
  ["digital-properties/websites/landing-pages"]="Landing page projects."
  ["digital-properties/websites/microsites"]="Microsite projects."
  ["internal-operations/automation"]="Automation scripts and tools."
  ["internal-operations/documentation"]="Internal documentation and manuals."
  ["internal-operations/processes"]="Business process documentation."
  ["internal-operations/tools"]="Internal tools and utilities."
  ["internal-operations/workflows"]="Workflow diagrams and descriptions."
  ["research-insights/audience-insights"]="Research on target audiences."
  ["research-insights/competitor-analysis"]="Competitor analysis reports."
  ["research-insights/market-research"]="Market research documents."
  ["research-insights/performance-data"]="Performance data and analytics."
  ["standards/approval-workflows"]="Approval workflow guidelines."
  ["standards/brand-guidelines"]="Branding guidelines and standards."
  ["standards/file-organization"]="File organization standards."
  ["standards/naming-conventions"]="Naming conventions for files and directories."
  ["standards/quality-standards"]="Quality assurance standards."
)

# --- Top-level directories for readmes ---
top_dirs=(
  campaigns client-deliverables content creative-assets
  digital-properties internal-operations research-insights standards
)

# --- Create all directories and .gitkeep ---
for dir in "${!descriptions[@]}"; do
  mkdir -p "$dir"
  touch "$dir/.gitkeep"
done

# --- Generate README.md for each main folder ---
for parent in "${top_dirs[@]}"; do
  {
    echo "# ${parent//-/ }"
    echo ""
    case "$parent" in
      "campaigns")
        echo "This directory contains all marketing campaign materials: active, completed, and reusable campaign templates for various channels."
        ;;
      "client-deliverables")
        echo "This directory contains all finalized client-facing materials, including presentations, reports, strategy documents, and digital assets."
        ;;
      "content")
        echo "This directory stores all written and multimedia content produced, such as blogs, case studies, and channel-specific copywriting."
        ;;
      "creative-assets")
        echo "All creative media for campaigns and branding: ad creatives, brand assets, media library, and client-provided resources."
        ;;
      "digital-properties")
        echo "All digital products managed by aDIGINTROVERT: mobile apps, web applications, and website projects."
        ;;
      "internal-operations")
        echo "Resources for internal workflow, documentation, automation, and business processes."
        ;;
      "research-insights")
        echo "Research data, analytics, competitor studies, audience insights, and performance metrics."
        ;;
      "standards")
        echo "Company policies, branding guidelines, naming conventions, file organization, and quality standards."
        ;;
      *)
        echo "This directory contains relevant project files."
        ;;
    esac
    echo ""
    echo "## Subdirectories"
    for dir in "${!descriptions[@]}"; do
      if [[ $dir == $parent/* ]]; then
        subdir=$(basename "$dir")
        echo "- **$subdir**: ${descriptions[$dir]}"
      fi
    done
  } > "$parent/README.md"
done

# --- .gitignore (safe defaults, update as needed) ---
cat > .gitignore <<EOF
# Node modules
node_modules/
# Build directories
dist/
build/
# Logs
logs/
*.log
# Temporary files
tmp/
*.tmp
*.swp
# OS-specific files
.DS_Store
Thumbs.db
EOF

# --- LICENSE ---
cat > LICENSE <<EOF
All Rights Reserved

© $(date +%Y) aDIGINTROVERT. All rights reserved.

Unauthorized copying, distribution, modification, or use of this material is strictly prohibited without prior written consent of aDIGINTROVERT.
EOF

# --- Main README.md ---
cat > README.md <<EOF
# aDIGINTROVERT Platform

Professional marketing and digital solutions platform for 2025 and beyond.

## Repository Structure

- **campaigns**: All marketing campaign materials, including active, completed, and template campaigns.
- **client-deliverables**: Deliverables provided to clients: final assets, presentations, reports, and strategy docs.
- **content**: Blog articles, case studies, and all forms of copywriting.
- **creative-assets**: Ad creatives, brand materials, and media resources.
- **digital-properties**: Mobile apps, web applications, and websites.
- **internal-operations**: Internal tools, automation scripts, processes, and documentation.
- **research-insights**: Audience, market, and competitor research; analytics.
- **standards**: Company policies, branding, quality, and naming conventions.

## License

All Rights Reserved © $(date +%Y) aDIGINTROVERT. Unauthorized copying, modification, or distribution is strictly prohibited.

---
EOF

# --- GIT Commit and Push (force sync main branch if needed) ---
git add .
git commit -m "chore: 2025 professional repo structure, detailed folder READMEs, and proprietary licensing"
git pull origin main --rebase
git push origin main

echo "✅ Professional structure, documentation, and licensing updated and pushed to 'main'."