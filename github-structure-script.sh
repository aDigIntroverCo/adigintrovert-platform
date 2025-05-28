#!/bin/bash

# aDIGINTROVERT Repository Structure Creator
# Run this script in your local repository folder

echo "Creating aDIGINTROVERT professional repository structure..."

# Create main directories and subdirectories
mkdir -p campaigns/{active,completed,templates/{social-media,email,ppc,content}}

mkdir -p creative-assets/{brand-materials/{logos,style-guides,color-systems,typography},media-library/{photography,video,audio,graphics},ad-creatives/{display,social,print,video},client-assets}

mkdir -p content/{copywriting/{ad-copy,web-copy,email-copy,social-copy},blog-articles,whitepapers,case-studies}

mkdir -p digital-properties/{websites/{client-sites,landing-pages,microsites},mobile-apps/{ios,android,hybrid},web-applications}

mkdir -p client-deliverables/{presentations,reports,strategy-documents,final-assets}

mkdir -p internal-operations/{processes,workflows,tools,automation,documentation}

mkdir -p research-insights/{market-research,competitor-analysis,audience-insights,performance-data}

mkdir -p standards/{brand-guidelines,quality-standards,naming-conventions,file-organization,approval-workflows}

# Create README files for each main directory
cat > campaigns/README.md << 'EOF'
# Campaigns

This directory contains all marketing and advertising campaigns.

## Structure:
- `active/` - Currently running campaigns
- `completed/` - Archived completed campaigns
- `templates/` - Reusable campaign templates

## Naming Convention:
`client-name-campaign-name-YYYY-MM`
EOF

cat > creative-assets/README.md << 'EOF'
# Creative Assets

Centralized repository for all creative materials and brand assets.

## Structure:
- `brand-materials/` - Company and client brand assets
- `media-library/` - Photography, video, audio, graphics
- `ad-creatives/` - Advertisement creative materials
- `client-assets/` - Client-specific creative materials
EOF

cat > content/README.md << 'EOF'
# Content

All written content including copy, articles, and documentation.

## Structure:
- `copywriting/` - Marketing copy for various channels
- `blog-articles/` - Blog posts and articles
- `whitepapers/` - Technical and industry whitepapers
- `case-studies/` - Client success stories and case studies
EOF

cat > digital-properties/README.md << 'EOF'
# Digital Properties

Websites, mobile applications, and web-based tools.

## Structure:
- `websites/` - Client websites and landing pages
- `mobile-apps/` - iOS, Android, and hybrid applications
- `web-applications/` - Custom web-based tools and platforms
EOF

cat > client-deliverables/README.md << 'EOF'
# Client Deliverables

Final materials and presentations delivered to clients.

## Structure:
- `presentations/` - Client presentations and pitch decks
- `reports/` - Performance and analytics reports
- `strategy-documents/` - Strategic planning documents
- `final-assets/` - Final creative and marketing assets
EOF

cat > internal-operations/README.md << 'EOF'
# Internal Operations

Internal processes, workflows, and operational tools.

## Structure:
- `processes/` - Standard operating procedures
- `workflows/` - Automated workflows and integrations
- `tools/` - Internal tools and utilities
- `automation/` - Automation scripts and configurations
- `documentation/` - Internal documentation
EOF

cat > research-insights/README.md << 'EOF'
# Research & Insights

Market research, competitive analysis, and data insights.

## Structure:
- `market-research/` - Industry and market analysis
- `competitor-analysis/` - Competitive research
- `audience-insights/` - Target audience research
- `performance-data/` - Campaign and marketing performance data
EOF

cat > standards/README.md << 'EOF'
# Standards

Company standards, guidelines, and operational procedures.

## Structure:
- `brand-guidelines/` - Brand identity and usage guidelines
- `quality-standards/` - Quality control standards
- `naming-conventions/` - File and project naming conventions
- `file-organization/` - Asset organization standards
- `approval-workflows/` - Client and internal approval processes
EOF

# Create .gitkeep files to preserve empty directories in Git
find . -type d -empty -exec touch {}/.gitkeep \;

# Create main project README
cat > README.md << 'EOF'
# aDIGINTROVERT Platform

Centralized asset repository for marketing and advertising operations.

## Repository Structure

This repository serves as the central hub for all aDIGINTROVERT assets, campaigns, and operational materials.

### Main Directories:

- **campaigns/** - Active and completed marketing campaigns
- **creative-assets/** - Brand materials, media library, and creative assets
- **content/** - Written content including copy, articles, and documentation
- **digital-properties/** - Websites, mobile apps, and web applications
- **client-deliverables/** - Final client presentations and materials
- **internal-operations/** - Internal processes and operational tools
- **research-insights/** - Market research and data insights
- **standards/** - Company standards and guidelines

## Getting Started

1. Review the standards directory for naming conventions and file organization
2. Check existing templates before creating new campaigns
3. Follow the established folder structure for consistency
4. Ensure proper documentation for all assets and campaigns

## Contributing

Please follow the established folder structure and naming conventions when adding new assets or campaigns.
EOF

# Create .gitignore file
cat > .gitignore << 'EOF'
# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Temporary files
*.tmp
*.temp
~$*

# Adobe files
*.ai~
*.psd~
*.indd~

# Video/Audio temp files
*.mov~
*.mp4~
*.avi~
*.mp3~

# Large files (consider using Git LFS)
*.zip
*.rar
*.7z

# Cache files
.cache/
node_modules/
.env
.env.local

# Build outputs
dist/
build/
EOF

echo "✅ Repository structure created successfully!"
echo ""
echo "Next steps:"
echo "1. Review the created structure"
echo "2. Add your existing files to appropriate directories"
echo "3. Commit and push to GitHub:"
echo "   git add ."
echo "   git commit -m 'Initial repository structure setup'"
echo "   git push origin main"
echo ""
echo "📁 Structure created with:"
echo "- 8 main directories with subdirectories"
echo "- README files for documentation"
echo "- .gitkeep files to preserve empty directories"
echo "- Professional .gitignore for marketing assets"