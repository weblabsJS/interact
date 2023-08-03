mkdir dist
tsc -p ./tsconfig.json
cp ./src/package.json ./dist
cp ./src/style.css ./dist
cp README.MD ./dist
git add ./src/package.json
git add build.sh
git add README.MD
git add *
git commit -m "Updated package.json"
git push
#for now, we will not push anything to the npm servers.
#cd dist && npm publish --access public