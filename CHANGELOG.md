# Changelog

All notable changes to Melody's Medicines are documented here.

## 2026-03-25

### Added
- Firebase cloud sync — sign in with Google to sync save data across devices
- Cloud indicator in header (shows sync status)
- "Cloud Sync" section in settings panel with sign in/out
- Offline support via Firestore persistence (works without internet, syncs when back online)
- Debounced Firestore writes (2s) to stay within free tier limits
- "Sync Now" button for manually pulling latest cloud data (handy on mobile)

### Fixed
- Import now pushes data to Firestore so cloud sync doesn't overwrite imported saves on reload

### Changed
- Refactored saveState/loadState into buildStateObject + applyState for reuse
- Bumped service worker cache to v7
- Moved Brackroot Academy to its own repo (the-vfp/Brackroot-Academy)
- Moved Claude Chat Exporter to its own repo (the-vfp/Claude-Chat-Exporter)

## 2026-03-20

### Changed
- Summer theme: sky blue body, yellow header, deep navy accent/buttons, dark header text
- Fall theme: Halloween palette with near-black body, dark purple header, orange accent/buttons, light text

## 2026-03-18

### Added
- Locale filter and search bar on the NPCs page
- Auto-resizing note textareas to fit content
- Vampire Venom Core note on Wand tool in Melody's Status page

### Fixed
- Stats ailment tier display: case mismatch bug, now shows top 3 per tier

## 2026-03-17

### Changed
- Locale skin now scoped to forage page only; rest of app follows season theme
- Refactored Rules tab with grouped two-row DLC navigation
- Moved Projects from More tab into Rules

## 2026-03-16

### Added
- Bogle's Night DLC: dark locale themes, downtime tracking, guise system

## 2026-03-14

### Added
- Workshop sub-page under Melody tab for project tracking
- Custom NPC creation, locale grouping, and editable NPC profiles
- Editable activity feed notes in Logs view
- Timer and FP tracking for downtime sessions
- Stats page with locale visits, top reagents, and ailment tier breakdowns
- Festival and log detail content
- File-based import/export to fix clipboard truncation on mobile
- Bog, Isles, and Depths added to reagent locale filters
- Section labels on filter groups for better mobile scannability

### Changed
- Unified nav styling with seasonal and locale color themes, flattened all gradients
- Default season changed from Summer to Autumn
- Removed "All Regions" from locale filter options

### Fixed
- Subpage nav bar: centers when it fits, scrolls when it overflows

## 2026-03-13

### Added
- Season system: season selector, per-season logs, forage threshold modifiers
- Inventory system
- Copy Summary export for week logs
- Supply/Home badges on selected reagent cards in Plan tab

### Changed
- Auto-sync rep tier in Plan, show all tiers in picker, persist patient type to logs

## 2026-03-12

### Added
- Nightfall DLC integration: night phases, ailments, reagents, events, dark mode
- NPC profiles with notes, portraits, and alphabetical list view
- Collapsible filter section with DLC source filter on Ailments and Reagents

### Changed
- Ailment flavour text and consequences now show inline without tap

## 2026-03-10

### Added
- Initial release of Melody's Medicines PWA
- Ailments, Reagents, Locales, and Session tabs
- NPC Roster under More/Extras tab
- Melody status page with video game-style layout
- Export/import save data in settings panel
- Standalone data transfer page
