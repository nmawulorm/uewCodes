git config --global user.name "Nicholas Mawulorm"
git config --global user.email username@domain.com
git config  --global init.default branch main
cd C:/Users/.../Repository
git init
git status
git add .
git commit -a -m "New commit message"
git remote add origin https://github.com/nmawulorm/Repository.git
git branch -M main
git push -u origin main

REM Use this to create a new branch and switch to it.
git checkout -b main
git push -u origin main

