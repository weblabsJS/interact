@echo off

mkdir dist
tsc -p ./tsconfig.json
copy ./src/package.json ./dist
python scripts/style.py
copy README.MD ./dist
git add ./src/package.json
git add ./src/style.css
git add build.bat
git add README.MD
git add *
git add .gitignore

REM Prompt the user for the commit message
set /p commit_message="Enter the commit message: "

git commit -m "%commit_message%"
git push

REM For now, we will not push anything to the npm servers.
REM cd dist && npm publish --access public
