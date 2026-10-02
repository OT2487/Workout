LIFT VAULT — USERNAME DISPLAY FIX

IMPORTANT:
This package still contains placeholders for:
  YOUR_SUPABASE_URL
  YOUR_SUPABASE_PUBLISHABLE_KEY

Before uploading index.html to GitHub, replace them with the SAME Supabase
Project URL and Publishable key you already use for Lift Vault / Idea Vault.

The previous username-display package could stop all JavaScript before the
Sign In / Create Account buttons were attached when those placeholders were
still present. This version no longer fails silently: it shows a clear message.

After editing index.html:
1. Upload/replace index.html and service-worker.js in GitHub.
2. Wait for GitHub Pages to redeploy.
3. Refresh the website on computer.
4. Fully close and reopen the installed phone app.
5. If the phone still shows the old version, remove the home-screen app and
   install it again.

Sign in still uses EMAIL + PASSWORD.
Username is the visible display name inside Lift Vault.
