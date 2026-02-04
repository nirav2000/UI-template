# UI Design System Generator

A visual tool to create, customize, and export comprehensive design systems for consistent application development. Built with pure HTML, CSS, and JavaScript - **no frameworks, no build tools, no dependencies!**

![Pure Vanilla JavaScript](https://img.shields.io/badge/JavaScript-Vanilla-yellow) ![No Dependencies](https://img.shields.io/badge/Dependencies-None-green) ![Works Everywhere](https://img.shields.io/badge/Works-Everywhere-blue)

## 🚀 Zero Setup Required

Simply open `index.html` in your browser - that's it! No installation, no build process, no dependencies.

**Live Demo**: https://nirav2000.github.io/UI-template

## Features

### 🎨 Visual Editor
- **Live Color Customization**: Adjust primary, accent, surface, and text colors with real-time preview
- **Typography Controls**: Choose font families (Sans, Serif, Mono) and customize weights (100-900)
- **UI Presets**: Customize border radius, spacing scale, and shadow intensity
- **Theme Toggle**: Switch between dark and light modes

### 📋 Comprehensive Component Preview
- **Typography Samples**: Multiple heading levels and body text with various weights
- **Buttons**: Primary, Secondary, and Outline variants
- **Form Elements**: Text inputs with consistent styling
- **Cards**: Standard and elevated card components
- **Tables**: Data table with badges and status indicators
- **Color Swatches**: Live preview of all colors with hex values

### 📤 Export to Markdown
Generate a complete design specification including:
- Full color palette with hex codes
- Typography system documentation
- UI configuration details
- CSS custom properties
- Component implementation guidelines
- Design vibe description

### 💾 Persistent Storage
All your design settings are automatically saved to localStorage, so your work is preserved across sessions.

## Quick Start

### Option 1: Just Open It
```bash
# Clone or download
git clone https://github.com/nirav2000/UI-template.git
cd UI-template

# Open in your browser
open index.html
# or double-click index.html
```

### Option 2: Use GitHub Pages
Visit: https://nirav2000.github.io/UI-template

### Option 3: Local Web Server (Optional)
```bash
# Python
python3 -m http.server 8000

# PHP
php -S localhost:8000

# Node.js
npx http-server
```

Then open: http://localhost:8000

## Usage

### 1. Customize Your Design System

Use the sidebar tabs to customize every aspect:

**Colors Tab:**
- Primary Blues (400, 600)
- Accent Purples (400, 600)
- Surface colors (Background, Main surface)
- Text colors (Primary, Secondary, Muted)

**Typography Tab:**
- Select base font family (Sans, Serif, Mono)
- Customize font weights (Thin to Bold: 100-900)

**UI Tab:**
- Border radius style (None, Small, Medium, Large, XL, Full)
- Spacing scale (0.5rem to 2rem)
- Shadow intensity (None, Small, Medium, Large)

**Settings Tab:**
- Update brand name and description
- Toggle between Dark and Light themes
- Reset to default configuration

### 2. Preview Components

The main stage displays a live preview of all components. Changes update immediately!

### 3. Export Your Design System

Click "Export for Claude" to copy a comprehensive Markdown specification.

### 4. Use With Claude

```
Use this Design System to build a [Your App Name]:

[Paste your exported Markdown here]
```

## 💡 Why Pure JavaScript?

- ✅ **Works Instantly**: No build process, no compilation
- ✅ **Universal**: Runs in any modern browser
- ✅ **Simple**: Clean, readable code
- ✅ **Easy to Modify**: Edit and reload
- ✅ **No Dependencies**: Zero npm packages
- ✅ **Lightweight**: Single ~50KB file
- ✅ **GitHub Pages Ready**: Just push!

## Default Design System

- **Primary Colors**: Blue (#3B85FF, #0066BB)
- **Accent Colors**: Purple (#8533FF, #6600CC)
- **Surface Colors**: Near-black backgrounds (#0A0A0A, #141414)
- **Typography**: Thin, elegant weights
- **UI Style**: Medium border radius with medium shadows

## Browser Support

Works on all modern browsers:
- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Opera (latest)

## Mobile Responsive

Fully responsive with a slide-out sidebar menu on mobile devices.

## Customization

Since this is a single HTML file with embedded CSS and JavaScript:

1. **Add Colors**: Update `DEFAULT_CONFIG` in the JavaScript
2. **Add Components**: Add HTML and update `applyConfig()`
3. **Change Styles**: Modify the CSS in `<style>`
4. **Add Features**: Add JavaScript in `<script>`

## Data Persistence

Configuration automatically saves to `localStorage`. To clear:
```javascript
localStorage.removeItem('ui-design-system');
```

Or use "Reset to Default" in Settings.

## Deployment

### GitHub Pages
1. Push to GitHub
2. Settings → Pages
3. Source: main branch / (root)
4. Save

### Any Static Host
Works on: Netlify, Vercel, Cloudflare Pages, AWS S3, or any web server.

## Use Cases

- Create design systems for web apps
- Prototype UI aesthetics quickly
- Show design options to clients
- Generate specs for AI development
- Learn how design systems work
- Document design decisions

## License

MIT License - Free for personal or commercial projects.

## Contributing

Improvements welcome! This is intentionally a single-file app for simplicity.

---

**Built with** ❤️ **and vanilla JavaScript**

*No frameworks were harmed in the making of this application*
