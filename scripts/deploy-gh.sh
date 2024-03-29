#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/haker23/blog.git
git push -u origin main

cd -