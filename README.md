# MediumToJekyll

This tool can help you sync your Medium posts with your own Jekyll blog. It will automatically download your posts from Medium, convert them to Markdown, and upload them to your repository. 

[![Automatic build](../../actions/workflows/pages-deploy.yml/badge.svg)](../../actions/workflows/pages-deploy.yml)
[![pages-build-deployment](../../actions/workflows/pages/pages-build-deployment/badge.svg)](../../actions/workflows/pages/pages-build-deployment)
[![ZMediumToMarkdown](https://github.com/ZhgChgLi/zhgchgli.github.io/actions/workflows/ZMediumToMarkdown.yml/badge.svg)](https://github.com/ZhgChgLi/zhgchgli.github.io/actions/workflows/ZMediumToMarkdown.yml)

----

# Setup
1. Click the green button 'Use this template' located above and select 'Create a new repository'.
2. Enter respository name as the URL path you wish to use and select 'public', then click 'Create repository from template'.
- respository name(URL path) MUST end with `.github.io`

### First-time run

1. Please refer to the configuration information in the section below and make sure to specify your Medium username in the `_zmediumtomarkdown.yml` file.
2. Then, you can manually run the ZMediumToMarkdown GitHub action by going to the `Actions` tab in your GitHub repository, selecting the `ZMediumToMarkdown` action, clicking on the `Run workflow` button, and selecting the `main` branch.

3. Please **wait for the action to download, convert, and commit your posts to your repository (note that the first run may be slow)**.

4. Once the ZMediumToMarkdown action has completed, **you should also wait for the `Automatic Build` action to finish**.

5. Go to the `Settings` section of your GitHub repository and select `Pages`, In the `Branch` field, select `gh-pages`, and leave `/(root)` selected as the default. Click `Save` and **wait for the `Pages build and deployment` action to finish**.

After all is done, you can visit your `xxx.github.io` page to check the results or use `bundle exec jekyll serve` in your terminal for local testing.🎉

# Configuration

## Site Setting
### _zmediumtomarkdown.yml
```
medium_username: # enter your username on Medium.com
```

Please specify your Medium username for automatic download and syncing of your posts.

### _config.yml & jekyll setting

For more information, please refer to [jekyll-theme-chirpy](https://github.com/cotes2020/jekyll-theme-chirpy/) or [jekyllrb](https://jekyllrb.com).

## Github Action
### ZMediumToMarkdown

You can configure the time interval for syncing in `./.github/workflows/ZMediumToMarkdown.yml`.

The default time interval for syncing is once per day.

You can also manually run the ZMediumToMarkdown action by going to the `Actions` tab in your GitHub repository, selecting the `ZMediumToMarkdown` action, clicking on the `Run workflow` button, and selecting the `main` branch.

# Disclaimer

All content downloaded using ZMediumToMarkdown, including but not limited to articles, images, and videos, are subject to copyright laws and belong to their respective owners. ZMediumToMarkdown does not claim ownership of any content downloaded using this tool.

Downloading and using copyrighted content without the owner's permission may be illegal and may result in legal action. ZMediumToMarkdown does not condone or support copyright infringement and will not be held responsible for any misuse of this tool.

Users of ZMediumToMarkdown are solely responsible for ensuring that they have the necessary permissions and rights to download and use any content obtained using this tool. ZMediumToMarkdown is not responsible for any legal issues that may arise from the misuse of this tool.

By using ZMediumToMarkdown, users acknowledge and agree to comply with all applicable copyright laws and regulations.

# Troubleshooting
## My GitHub page keeps presenting a 404 error or doesn't update with the latest posts.
- Please make sure you have followed the setup steps above in order.
- Wait for all GitHub actions to finish, including the `Pages build and deployment` and `Automatic Build` actions, you can check the progress on the `Actions` tab.
- Make sure you have the correct settings selected in `Settings -> Pages`.

### Things to know
- **Every commit and post change will trigger the `Automatic Build` & `Pages build and deployment` action. Please wait for this action to finish before checking the final result.**
- You can create your own Markdown posts in the `_posts` directory by naming the file as `YYYY-MM-DD-POSTNAME` and recommend using lowercase file names.
- You can include images and other resources in the /assets directory.
