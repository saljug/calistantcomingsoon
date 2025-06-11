# Calistant Coming Soon - Deployment Script
# This script helps deploy the site to GitHub repository

Write-Host "🚀 Deploying Calistant Coming Soon to GitHub..." -ForegroundColor Green

# Check if git is available
if (!(Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Git is not installed or not in PATH" -ForegroundColor Red
    exit 1
}

# Initialize git repository if not already done
if (!(Test-Path ".git")) {
    Write-Host "📦 Initializing Git repository..." -ForegroundColor Yellow
    git init
}

# Add all files
Write-Host "📁 Adding files to git..." -ForegroundColor Yellow
git add .

# Commit changes
$commitMessage = Read-Host "Enter commit message (or press Enter for default)"
if ([string]::IsNullOrWhiteSpace($commitMessage)) {
    $commitMessage = "feat: initial coming soon page deployment"
}

Write-Host "💾 Committing changes..." -ForegroundColor Yellow
git commit -m $commitMessage

# Add remote if not exists
$remoteExists = git remote get-url origin 2>$null
if (!$remoteExists) {
    Write-Host "🔗 Adding GitHub remote..." -ForegroundColor Yellow
    git remote add origin https://github.com/saljug/calistantcomingsoon.git
}

# Set main branch
git branch -M main

# Push to GitHub
Write-Host "🚀 Pushing to GitHub..." -ForegroundColor Yellow
try {
    git push -u origin main
    Write-Host "✅ Successfully deployed to GitHub!" -ForegroundColor Green
    Write-Host "🌐 Your site will be available at: https://saljug.github.io/calistantcomingsoon/" -ForegroundColor Cyan
    Write-Host "⏱️ It may take a few minutes for GitHub Pages to deploy." -ForegroundColor Yellow
} catch {
    Write-Host "❌ Failed to push to GitHub. Please check your credentials and repository access." -ForegroundColor Red
    Write-Host "You may need to authenticate with GitHub first." -ForegroundColor Yellow
}

Write-Host "`nDeployment script completed!" -ForegroundColor Green
pause 