---
name: Equilibrium Finance
colors:
  surface: '#051424'
  surface-dim: '#051424'
  surface-bright: '#2c3a4c'
  surface-container-lowest: '#010f1f'
  surface-container-low: '#0d1c2d'
  surface-container: '#122131'
  surface-container-high: '#1c2b3c'
  surface-container-highest: '#273647'
  on-surface: '#d4e4fa'
  on-surface-variant: '#c6c6cd'
  inverse-surface: '#d4e4fa'
  inverse-on-surface: '#233143'
  outline: '#909097'
  outline-variant: '#45464d'
  surface-tint: '#bec6e0'
  primary: '#bec6e0'
  on-primary: '#283044'
  primary-container: '#0f172a'
  on-primary-container: '#798098'
  inverse-primary: '#565e74'
  secondary: '#bcc7de'
  on-secondary: '#263143'
  secondary-container: '#3e495d'
  on-secondary-container: '#aeb9d0'
  tertiary: '#b9c7e0'
  on-tertiary: '#233144'
  tertiary-container: '#09182a'
  on-tertiary-container: '#738298'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#dae2fd'
  primary-fixed-dim: '#bec6e0'
  on-primary-fixed: '#131b2e'
  on-primary-fixed-variant: '#3f465c'
  secondary-fixed: '#d8e3fb'
  secondary-fixed-dim: '#bcc7de'
  on-secondary-fixed: '#111c2d'
  on-secondary-fixed-variant: '#3c475a'
  tertiary-fixed: '#d5e3fd'
  tertiary-fixed-dim: '#b9c7e0'
  on-tertiary-fixed: '#0d1c2f'
  on-tertiary-fixed-variant: '#3a485c'
  background: '#051424'
  on-background: '#d4e4fa'
  surface-variant: '#273647'
typography:
  display-lg:
    fontFamily: Manrope
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.02em
  display-lg-mobile:
    fontFamily: Manrope
    fontSize: 24px
    fontWeight: '700'
    lineHeight: 32px
    letterSpacing: -0.02em
  headline-md:
    fontFamily: Manrope
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  body-lg:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-sm:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-caps:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.05em
  data-mono:
    fontFamily: JetBrains Mono
    fontSize: 14px
    fontWeight: '500'
    lineHeight: 20px
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  base: 4px
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 32px
  gutter: 16px
  margin-mobile: 16px
  margin-desktop: 48px
---

## Brand & Style

This design system is built for a high-stakes financial environment where clarity and speed of cognition are paramount. The brand personality is **reliable, data-driven, and sophisticated**, targeting serious investors who require a tool that feels like a professional terminal rather than a casual app.

The design style follows a **Modern Minimalist** approach. It utilizes heavy whitespace to reduce cognitive load during volatile market conditions and employs a card-based architecture to modularize complex data sets. The aesthetic is "quietly premium"—relying on precise alignment, subtle tonal shifts, and exceptional typography rather than decorative flourishes. 

The emotional response should be one of **calm authority** and **unwavering precision**.

## Colors

The palette is anchored in a **Dark Mode** default to reduce eye strain during extended trading sessions and to make data visualizations pop. 

- **Primary & Secondary:** Deep Navy (#0F172A) serves as the base canvas, with Slate (#1E293B) used for card surfaces and UI containers to create subtle depth.
- **Actionable Accents:** Success Green (#22C55E) and Error Red (#EF4444) are reserved strictly for semantic data—price movements, "Buy/Sell" indicators, and status alerts. 
- **Typography & Icons:** A range of Slate grays provides a clear hierarchy for content, ensuring that secondary information does not compete with primary tickers.

## Typography

The typographic system uses a tri-font strategy to balance character with utility:
- **Manrope** is used for headlines and primary brand touchpoints, offering a modern, refined geometric feel that establishes the "sophisticated" tone.
- **Inter** handles the bulk of the UI and body text. Its neutral, systematic nature ensures maximum legibility for news feeds and settings.
- **JetBrains Mono** is utilized specifically for numeric data, stock tickers, and timestamps. The monospaced nature prevents "jumping" when numbers update in real-time and reinforces the "technical/data-driven" persona.

**Hierarchy Note:** Use `label-caps` for table headers and section overviews to create a clear structural anchor.

## Layout & Spacing

The layout utilizes a **4px baseline grid** to ensure mathematical precision in all alignments. 

- **Mobile:** A 4-column fluid grid with 16px side margins. Cards typically span the full width of the grid.
- **Desktop/Tablet:** A 12-column fixed grid. Content is centered with a max-width of 1280px to maintain readability of data tables.
- **Spacing Philosophy:** Use "Density Tiers." Use `sm` (8px) for internal card elements (e.g., a ticker symbol and its sparkline) and `lg` (24px) to separate distinct logic blocks or modules.

## Elevation & Depth

In this dark-themed design system, depth is conveyed through **Tonal Layering** rather than traditional shadows. This maintains a clean, modern aesthetic.

1.  **Level 0 (Background):** Base color (#0F172A).
2.  **Level 1 (Cards/Containers):** Secondary color (#1E293B). These should have a subtle 1px stroke of #334155 to define edges against the dark background.
3.  **Level 2 (Modals/Popovers):** Tertiary color (#334155) with a soft, 20% opacity black shadow (0px 8px 24px) to suggest physical lift.

Avoid heavy blurs or glassmorphism to keep the UI feeling "solid" and trustworthy.

## Shapes

The shape language is **Soft (0.25rem)**. 

Financial apps require a sense of structure; overly rounded or "bubbly" corners detract from the professional tone. 
- **Small Elements (Inputs, Buttons):** 4px (0.25rem) radius.
- **Medium Elements (Cards, Charts):** 8px (0.5rem) radius.
- **Large Elements (Bottom Sheets):** 12px (0.75rem) radius for the top corners.

This subtle rounding provides a modern touch without compromising the "grid-like" stability of a professional trading platform.

## Components

- **Buttons:** Primary buttons use a high-contrast white or light gray fill with dark text. Secondary buttons use a ghost style with a 1px border. Buy/Sell actions use the semantic Green/Red fills.
- **Sparklines:** Use a 2px stroke width. The line should change color based on the net gain/loss of the displayed period (Green for positive, Red for negative).
- **Data Tables:** Row heights should be a consistent 48px or 56px. Use `data-mono` for all numerical columns to ensure alignment of decimal points.
- **Cards:** Cards should have no shadow; use the 1px border (#334155) for definition. Headlines within cards use `headline-md`.
- **Input Fields:** Use the `Secondary` color as the fill. The border should change to `Neutral` (#94A3B8) on hover and a brand-specific accent on focus.
- **Chips/Badges:** Use low-saturation backgrounds of the semantic colors (e.g., 10% opacity Green) with full-saturation text for status indicators.