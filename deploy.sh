set -e

npm run build
cd dist

git init
git add -A
git commit -m 'deploy'
git switch -c gh-pages

git remote add origin git@github.com:k-teck/test-redsoft.git
git push origin gh-pages

cd -