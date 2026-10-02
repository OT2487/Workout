LIFT VAULT — USERNAME DISPLAY VERSION

WHAT CHANGED
- New accounts now choose a username when signing up.
- Lift Vault displays the username in the top-right instead of the email address.
- Email + password are still used to sign in.
- Existing users can click "Change Username" after signing in.
- Usernames are stored in Supabase Auth user metadata.
- No new SQL/database changes are required.

USERNAME RULES
- 3 to 20 characters
- Letters, numbers, and underscores only
- This version treats usernames as display names; they do not need to be unique.

UPDATE YOUR LIVE SITE
Upload/replace:
- index.html
- service-worker.js
- manifest.webmanifest
- icon-192.png
- icon-512.png
- apple-touch-icon.png
- favicon-32.png

schema.sql does NOT need to be run again if Lift Vault cloud sync is already working.

After GitHub Pages redeploys, refresh the site.
If an installed phone app keeps showing the old version, close it completely and reopen it.
If needed, remove the home-screen app and install it again.
