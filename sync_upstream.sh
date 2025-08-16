#!/bin/bash

# Fetch changes from upstream
git fetch upstream

# Merge changes into local main branch
git checkout main
git merge upstream/main

# Push changes to your fork
git push origin main

# Deploy to Firebase Hosting
npx firebase deploy --only hosting