LIFT VAULT APP UPGRADE

This is based on Lift Vault V6.

WHAT THIS ADDS
- Installable web-app setup (PWA)
- Custom Lift Vault app icon
- Standalone/full-screen style launch from a phone home screen
- iPhone home-screen icon support
- Android/Chrome install support
- Safer spacing for phone notches/home indicators
- Slightly improved mobile touch targets
- Service worker for app-shell caching/offline startup

FILES TO UPLOAD TO YOUR GITHUB LIFT VAULT REPOSITORY
- index.html
- manifest.webmanifest
- service-worker.js
- icon-192.png
- icon-512.png
- apple-touch-icon.png
- favicon-32.png

IMPORTANT
Lift Vault V6 still saves workout data in that browser/device's local storage.
This app upgrade does NOT yet sync Lift Vault data between phone and computer.
That requires connecting Lift Vault to Supabase later.

After GitHub Pages redeploys:
1. Open the live Lift Vault site on your phone.
2. Refresh it.
3. Remove any old Lift Vault home-screen shortcut.
4. Add/install it again so the new icon and standalone app settings are picked up.
