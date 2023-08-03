@echo off

:: Create dist folder
mkdir dist

:: Compile TypeScript
tsc -p tsconfig.json

:: Copy necessary files to dist
copy src\package.json dist
copy src\style.css dist
copy README.MD dist

:: Add files to Git staging
git add src\package.json
git add src\style.css
git add build.bat
git add README.MD
git add *
git add .gitignore

:: Prompt for commit message
set /p commit_message=Enter the commit message: 

:: Commit changes
git commit -m "%commit_message%"
git push

:: For now, we will not push anything to the npm servers.
:: Uncomment the next line if you want to run npm publish
:: cd dist
:: npm publish --access public
