# command.sh

# Step 1: Create React App
npx create-react-app blackbird-simulation
cd blackbird-simulation

# Step 2: Initialize git
git init
git add .
git commit -m "Initial commit"

# Step 3: Create GitHub repo
gh auth login
gh repo create blackbird-simulation --public --source=. --remote=origin --push

# Step 4: Create and switch to new branch
git checkout -b update_logo

# Step 5: Replace logo and link manually in src/App.js and src/logo.svg

# Step 6: Commit and push changes
git add .
git commit -m "Update logo and link to Propeller Aero DirtMate"
git push --set-upstream origin update_logo

# Step 7: Create PR
gh pr create --base master --head update_logo --title "Update logo and link" --body "Replaced React logo with Propeller Aero logo and updated link."

# Step 8: Merge PR
gh pr merge --merge

# Step 9: Add repo URL
# REPO_URL https://github.com/DiksonIvySon/blackbird-simulation
