![ZMediumToJekyll](https://user-images.githubusercontent.com/33706588/225700695-fcbbdd87-2eaf-4629-bbe9-3ab1d9f7f5e6.jpg)

[![Automatic build](../../actions/workflows/pages-deploy.yml/badge.svg)](../../actions/workflows/pages-deploy.yml)
[![pages-build-deployment](../../actions/workflows/pages/pages-build-deployment/badge.svg)](../../actions/workflows/pages/pages-build-deployment)
[![ZMediumToMarkdown](https://github.com/ZhgChgLi/zhgchgli.github.io/actions/workflows/ZMediumToMarkdown.yml/badge.svg)](https://github.com/ZhgChgLi/zhgchgli.github.io/actions/workflows/ZMediumToMarkdown.yml)

Move your Medium account to Jekyll blog with just one click and automatically sync it in the future.

It will automatically download your posts from Medium, convert them to Markdown, and upload them to your repository, check out [my blog](https://github.com/ZhgChgLi/zhgchgli.github.io/) for online demo [zhgchg.li](https://zhgchg.li).

This tool is powered by [ZMediumToMarkdown](https://github.com/ZhgChgLi/ZMediumToMarkdown).

----

## Setup

- You can follow along with each step of this process by watching the following [video tutorial](https://www.youtube.com/watch?v=qsnZKFL3vks)

1. Click the green button `Use this template` located above and select `Create a new repository`.
2. Repo Owner could be an organization or username
2. Enter the **Repository Name**, which usually uses your **GitHub Username/Organization Name** and ends with `.github.io`, for example, my organization name is `zhgchgli` than it'll be `zhgchgli.github.io`.
3. Select the `public` repository option, and then click on `Create repository from template`.
4. Grant access to GitHub Actions by going to the `Settings` tab in your GitHub repository, selecting `Actions` -> `General`, and finding the `Workflow permissions section`, then, select `Read and write permissions`, and click on `Save` to save the changes.

*If you choose a different Repository Name, the GitHub page will be `https://username.github.io/Repository Name` instead of `https://username.github.io/`, and you will need to fill in the `baseurl` field in `_config.yml` with your Repository Name.

*If you are using an organization and cannot enable `Read and Write permissions` in the repository settings, please refer to the organization settings page and enable it there.

### First-time run

1. Please refer to the configuration information in the section below and make sure to specify your Medium username in the `_zmediumtomarkdown.yml` file.
2. ⌛️ Please wait for the `Automatic Build` and `pages-build-deployment` gitHub actions to finish before making any further changes.
3. Then, you can manually run the ZMediumToMarkdown GitHub action by going to the `Actions` tab in your GitHub repository, selecting the `ZMediumToMarkdown` action, clicking on the `Run workflow` button, and selecting the `main` branch.
4. ⌛️ Please wait for the action to download and convert all Medium posts from the specified username, and commit the posts to your repository.
5. ⌛️ Please wait for the `Automatic Build` and `pages-build-deployment` actions will also need to finish before making any further changes, and that they will start automatically once the ZMediumToMarkdown action has completed.
6. Go to the `Settings` section of your GitHub repository and select `Pages`, In the `Branch` field, select `gh-pages`, and leave `/(root)` selected as the default. Click `Save`, you can also find the URL for your GitHub page at the top of the page.
7. ⌛️ Please wait the `Pages build and deployment` action to finish.
8.  🎉 After all actions are completed, you can visit your xxx.github.io page to verify that the results are correct. Congratulations! 🎉

*To avoid expected Git conflicts or unexpected errors, please follow the steps carefully and in order, and be patient while waiting for each action to complete. 

*Note that the first time running may take longer.

*If you open the URL and notice that something is wrong, such as the web style being missing, please ensure that your configuration in the `_config.yml` file is correct.

***Please refer to the 'Things to Know' and 'Troubleshooting' sections below for more information.**

## Configuration

### Site Setting
#### _zmediumtomarkdown.yml
```
medium_username: # enter your username on Medium.com
```

Please specify your Medium username for automatic download and syncing of your posts.

#### _config.yml & jekyll setting

For more information, please refer to [jekyll-theme-chirpy](https://github.com/cotes2020/jekyll-theme-chirpy/) or [jekyllrb](https://jekyllrb.com).

### Github Action
#### ZMediumToMarkdown

You can configure the time interval for syncing in `./.github/workflows/ZMediumToMarkdown.yml`.

The default time interval for syncing is once per day.

You can also manually run the ZMediumToMarkdown action by going to the `Actions` tab in your GitHub repository, selecting the `ZMediumToMarkdown` action, clicking on the `Run workflow` button, and selecting the `main` branch.

## Disclaimer

All content downloaded using ZMediumToMarkdown, including but not limited to articles, images, and videos, are subject to copyright laws and belong to their respective owners. ZMediumToMarkdown does not claim ownership of any content downloaded using this tool.

Downloading and using copyrighted content without the owner's permission may be illegal and may result in legal action. ZMediumToMarkdown does not condone or support copyright infringement and will not be held responsible for any misuse of this tool.

Users of ZMediumToMarkdown are solely responsible for ensuring that they have the necessary permissions and rights to download and use any content obtained using this tool. ZMediumToMarkdown is not responsible for any legal issues that may arise from the misuse of this tool.

By using ZMediumToMarkdown, users acknowledge and agree to comply with all applicable copyright laws and regulations.

## Troubleshooting
### My GitHub page keeps presenting a 404 error or doesn't update with the latest posts.
- Please make sure you have followed the setup steps above in order.
- Wait for all GitHub actions to finish, including the `Pages build and deployment` and `Automatic Build` actions, you can check the progress on the `Actions` tab.
- Make sure you have the correct settings selected in `Settings -> Pages`.

#### Things to know
- **Every commit and post change will trigger the `Automatic Build` & `Pages build and deployment` action. Please wait for this action to finish before checking the final result.**
- You can create your own Markdown posts in the `_posts` directory by naming the file as `YYYY-MM-DD-POSTNAME` and recommend using lowercase file names.
- You can include images and other resources in the `/assets` directory.

## About
- [ZhgChg.Li](https://zhgchg.li/)
- [ZhgChgLi's Medium](https://blog.zhgchg.li/)

## Other works
### Swift Libraries
- [ZMarkupParser](https://github.com/ZhgChgLi/ZMarkupParser) is a pure-Swift library that helps you to convert HTML strings to NSAttributedString with customized style and tags.
- [ZPlayerCacher](https://github.com/ZhgChgLi/ZPlayerCacher) is a lightweight implementation of the AVAssetResourceLoaderDelegate protocol that enables AVPlayerItem to support caching streaming files.
- [ZNSTextAttachment](https://github.com/ZhgChgLi/ZNSTextAttachment) enables NSTextAttachment to download images from remote URLs, support both UITextView and UILabel.

### Integration Tools
- [ZReviewTender](https://github.com/ZhgChgLi/ZReviewTender) is a tool for fetching app reviews from the App Store and Google Play Console and integrating them into your workflow.
- [ZMediumToMarkdown](https://github.com/ZhgChgLi/ZMediumToMarkdown) is a powerful tool that allows you to effortlessly download and convert your Medium posts to Markdown format.


# Donate

[![Buy Me A Coffe](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20beer!&emoji=%F0%9F%8D%BA&slug=zhgchgli&button_colour=FFDD00&font_colour=000000&font_family=Bree&outline_colour=000000&coffee_colour=ffffff)](https://www.buymeacoffee.com/zhgchgli)

If you find this library helpful, please consider starring the repo or recommending it to your friends.

Feel free to open an issue or submit a fix/contribution via pull request. :)
