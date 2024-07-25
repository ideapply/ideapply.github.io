+++
title = 'Hugo建站笔记'
date = 2024-07-25T13:40:56+08:00
draft = false
tags = ["Hugo","建站"]
categories = ["网页"]

+++

### 本地部署

1. Homebrew安装Hugo：

   ```shell
   brew install hugo
   ```

2. 本地路径文件夹初始化：

   ```shell
   hugo new site personal-site
   ```

3. 生成新的文章草稿，并将文件中`draft: true`行改为`draft: false`：

   ```shell
   hugo new posts/first-post.md
   ```

4. 下载一个主题，并编辑根目录的`config.toml`文件：

   ```shell
   git init
   git submodule add https://github.com/reuixiy/hugo-theme-meme.git themes/meme
   ```

   修改`config.toml`文件：

   ```toml
   baseURL = 'http://ideapply.github.io/'
   languageCode = 'en-us'
   title = '云端小站'
   theme = "meme"
   publishDir = "docs"
   ```

5. 网页本地测试：

   ```javascript
   hugo server --disableFastRender
   ```

   浏览器中输入网址：http://localhost:1313/ 

### GitHub发布

1. 本地握手GitHub：

   ```shell
   git remote set-url origin https://github_token@github.com/ideapply/ideapply.github.io.git
   ```

   

2. 添加一个空白repository，注意不要添加如README，.gitignore等文档。

3. 发布到GitHub：

   ```shell
   git init
   git add .
   git commit -m "first commit"
   git remote add origin https://github.com/ideapply/ideapply.github.io.git
   git push -u origin main
   ```

4. 在Settings/Pages中选择`main`分支`/docs`文件夹。

![](https://cdn.jsdelivr.net/gh/ideapply/pichub@master/obsidian/202407251400597.png)

### 更新文章

1. 同步文件：

   ```shell
   cd /Users/lukesky/Public/GithubPages/ideapply.github.io
   git pull
   ```

2. 添加内容：

   ```shell
   hugo new posts/first-post.md
   hugo server --disableFastRender
   hugo -d docs
   hugo

3. 提交内容：

   ```shell
   git add --all
   git commit -m "First Push"
   git push -u origin main
   ```

### 刷新脚本

```sh
#!/bin/sh

cd /Users/lukesky/Public/GithubPages/personal-site
git pull
hugo -d docs
git add --all
git commit -m "Auto Push"
git push -u origin main
```



#### 参考资料

- [如何用 GitHub Pages + Hugo 搭建个人博客](https://cuttontail.blog/blog/create-a-wesite-using-github-pages-and-hugo/)
- [HUGO中文文档](https://hugo.opendocs.io/getting-started/usage/)
