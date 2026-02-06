# UI Design System Generator v3.0

A comprehensive, modular design system generator with 40+ customizable components. Create, customize, and export production-ready design systems with live preview. Built with pure HTML, CSS, and JavaScript - **no frameworks, no build tools, no dependencies!**

![Pure Vanilla JavaScript](https://img.shields.io/badge/JavaScript-Vanilla-yellow) ![No Dependencies](https://img.shields.io/badge/Dependencies-None-green) ![Works Everywhere](https://img.shields.io/badge/Works-Everywhere-blue) ![v3.0.0](https://img.shields.io/badge/version-3.0.0-blue)

## 🚀 Zero Setup Required

Simply open `index.html` in your browser - that's it! No installation, no build process, no dependencies.

**Live Demo**: https://nirav2000.github.io/UI-template

## 🚀 What's New in v3.0.0

### Modular Architecture
- **Separate component pages** - Each component category has its own dedicated page
- **Hub dashboard** - Central navigation to all component editors
- **200+ customizable properties** across all components
- **Phased release** - Phase 1 (Core Elements) complete, more coming soon

### Phase 1: Core Elements ✅

#### 🎨 Colors & Palette ([colors.html](colors.html))
- **Primary & Accent** colors with multiple variants (300, 400, 600, 800)
- **Semantic colors**: Success, Warning, Danger, Info
- **Neutral/Grayscale** system with text hierarchies
- **Gradient controls** with direction and opacity
- **50+ color properties** with live preview
- **Accessibility** contrast ratio indicators

#### Aa Typography ([typography.html](typography.html))
- **Font families**: Sans-serif, Serif, Monospace with specific font options
- **8 font sizes**: XS to 4XL with pixel value controls
- **7 font weights**: Thin (100) to Black (900)
- **Line heights**: Tight, Normal, Relaxed, Loose
- **Letter spacing**, text transform, alignment, decoration
- **Live heading hierarchy** preview (H1-H6)

#### 🔘 Buttons ([buttons.html](buttons.html))
- **6 variants**: Primary, Secondary, Outline, Ghost, Link, Danger
- **5 sizes**: XS, SM, MD, LG, XL
- **All states**: Default, Hover, Active, Disabled, Loading
- **Icon support**: Left, right, icon-only
- **Shadows**, borders, transitions
- **Button groups** and full-width options

#### 📝 Input Fields ([inputs.html](inputs.html))
- **9 input types**: Text, Email, Password, Number, Tel, URL, Search, Date, Time
- **Textarea** with resize controls
- **Label positions**: Top, Left, Inline, Floating
- **Validation states**: Error, Success, Disabled
- **Focus states** with ring customization
- **Icons/Prefix/Suffix** support
- **Helper text** styling

#### 📄 Cards & Containers ([cards.html](cards.html))
- **Flexible layouts**: Header, Body, Footer sections
- **Image positions**: Top, Left, Right, Background
- **Hover effects**: Lift, shadow, scale
- **Shadow levels**: None to XL
- **Card grids**: 2-column, 3-column layouts
- **Pricing cards** and action cards

#### 📊 Tables & Data ([tables.html](tables.html))
- **Border controls**: Outer, Inner, Both, None
- **Row striping** with custom colors
- **Hover effects** on rows
- **Sortable columns** with indicators (functional!)
- **Selectable rows** (click to select)
- **Density options**: Compact, Comfortable, Spacious
- **Responsive behavior**: Scroll or stack
- **Actions column** with buttons

### 📤 Export Options
Each component page includes:
- **Export CSS** - Production-ready CSS with custom properties
- **Save/Load** configurations using localStorage
- **Reset** to default settings
- **Live preview** with real-time updates

### 🎨 Consistent Design
- **Dark theme** across all pages
- **Gradient accents** with brand colors
- **Smooth transitions** and animations
- **Mobile responsive** on all pages
- **Keyboard shortcuts**: Ctrl+S (Save), Ctrl+E (Export), Esc (Back)

## 🗺️ Roadmap

### Phase 1: Core Elements (v3.0) ✅ COMPLETE
- ✅ Colors & Palette
- ✅ Typography
- ✅ Buttons
- ✅ Input Fields
- ✅ Cards & Containers
- ✅ Tables & Data

### Phase 2: Forms & Controls (v3.1) 🚧 Coming Soon
- ☐ Checkboxes & Radio Buttons
- ☐ Toggles & Switches
- ☐ Select Dropdowns
- ☐ Sliders & Range Inputs

### Phase 3: Navigation & Layout (v3.2) 📅 Planned
- ☐ Navigation Bar
- ☐ Sidebar
- ☐ Modals & Dialogs
- ☐ Tabs & Accordions

### Phase 4: Feedback & Data (v3.3) 📅 Planned
- ☐ Alerts & Notifications
- ☐ Toasts & Snackbars
- ☐ Badges & Pills
- ☐ Progress Bars & Loaders

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

## 📖 How to Use

1. **Open index.html** - Start at the hub dashboard
2. **Choose a component** - Click on any component card (e.g., Colors, Typography, Buttons)
3. **Customize** - Use the editor panel to adjust all properties
4. **Preview** - See changes in real-time in the preview panel
5. **Export** - Click "Export CSS" to copy production-ready code
6. **Save** - Save your configuration for later use

### Keyboard Shortcuts
- `Ctrl+S` / `Cmd+S` - Save configuration
- `Ctrl+E` / `Cmd+E` - Export CSS
- `Esc` - Return to hub

### Legacy Version
Access v2.1.0 (single-page version): [index-v2.1.0.html](index-v2.1.0.html)

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

## 📊 By the Numbers

- **40+ Components** across all phases
- **200+ Customizable Properties**
- **6 Dedicated Component Pages** (Phase 1)
- **0 Dependencies** - Pure vanilla JavaScript
- **100% Customizable** - Every color, size, and spacing
- **~300KB Total** - All component pages combined

## Default Design System

- **Primary Colors**: Blue (#3B85FF, #0066BB)
- **Accent Colors**: Purple (#8533FF, #6600CC)
- **Semantic Colors**: Success (#10B981), Warning (#F59E0B), Danger (#EF4444), Info (#06B6D4)
- **Surface Colors**: Near-black backgrounds (#0A0A0A, #141414, #1E1E1E)
- **Typography**: System fonts with full weight range (100-900)
- **UI Style**: Medium border radius (8-12px) with medium shadows

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
