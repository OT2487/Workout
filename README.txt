LIFT VAULT — SUPABASE SYNC VERSION

This version is based on Lift Vault V6 + the app/PWA upgrade.

WHAT IT DOES
- Uses Supabase Auth for sign in/sign up.
- Saves exercises, workouts, personal-record selections, and reusable workouts to Supabase.
- Syncs the same Lift Vault account between phone and computer.
- If your Supabase cloud row is empty the first time you sign in, it automatically
  migrates existing Lift Vault data from that browser's local storage into the cloud.
- Keeps a local cache as a backup/offline convenience.

SETUP
1. In the SAME Supabase project you use for Idea Vault:
   SQL Editor -> New query -> paste all of schema.sql -> Run.

2. Open index.html in a text editor and find:
   const SUPABASE_URL = "YOUR_SUPABASE_URL";
   const SUPABASE_KEY = "YOUR_SUPABASE_PUBLISHABLE_KEY";

3. Put your existing Supabase Project URL and Publishable key inside the quotation marks.
   Do NOT use the secret/service-role key.

4. Upload these files to your Lift Vault GitHub repository:
   index.html
   manifest.webmanifest
   service-worker.js
   icon-192.png
   icon-512.png
   apple-touch-icon.png
   favicon-32.png

5. In Supabase Authentication -> URL Configuration, add your Lift Vault GitHub Pages
   URL to Redirect URLs if you want email confirmation links to return to Lift Vault.

6. Open the live Lift Vault website and sign in.
   If Lift Vault uses the same Supabase project as Idea Vault, the same account works.

SECURITY
Row Level Security is enabled. Each authenticated user can only access the row whose
user_id matches their Supabase account.
