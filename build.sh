mkdir dist
tsc -p ./tsconfig.json
cp ./src/package.json ./dist
cp ./src/style.css ./dist
cp README.MD ./dist
git add ./src/package.json
git add ./src/style.css
git add build.sh
git add README.MD
git add *
git add .gitignore

# Prompt the user for the commit message
echo "Enter the commit message:"
read commit_message

git commit -m "$commit_message"
git push

# For now, we will not push anything to the npm servers.
# cd dist && npm publish --access public