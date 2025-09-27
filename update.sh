#!/bin/bash

# Portfolio Update Script
# This script helps you easily update and deploy your portfolio

echo "🚀 Portfolio Update Script"
echo "========================="

# Function to update resume
update_resume() {
    echo "📄 Updating resume..."
    read -p "Enter path to new resume PDF: " resume_path
    
    if [ -f "$resume_path" ]; then
        cp "$resume_path" assets/resume/Vaibhav_Gaur_Resume.pdf
        echo "✅ Resume updated successfully!"
        
        # Get file size
        file_size=$(du -h assets/resume/Vaibhav_Gaur_Resume.pdf | cut -f1)
        echo "📊 New file size: $file_size"
        echo "💡 Don't forget to update the file size in config.js if needed"
    else
        echo "❌ File not found: $resume_path"
    fi
}

# Function to commit and push changes
deploy() {
    echo "🔄 Deploying changes..."
    
    # Add all changes
    git add .
    
    # Get commit message
    read -p "Enter commit message: " commit_msg
    
    # Commit changes
    git commit -m "$commit_msg"
    
    # Push to GitHub
    git push
    
    echo "✅ Changes deployed! Vercel will automatically update your site."
}

# Main menu
echo ""
echo "What would you like to do?"
echo "1) Update resume"
echo "2) Deploy changes"
echo "3) Both"
echo "4) Exit"
echo ""

read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        update_resume
        ;;
    2)
        deploy
        ;;
    3)
        update_resume
        deploy
        ;;
    4)
        echo "👋 Goodbye!"
        exit 0
        ;;
    *)
        echo "❌ Invalid choice"
        exit 1
        ;;
esac

echo ""
echo "🎉 Done! Your portfolio is updated."
