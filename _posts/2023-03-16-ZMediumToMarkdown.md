# About

Thank you for using [ZMediumToMarkdown](https://github.com/ZhgChgLi/ZMediumToMarkdown).

This tool can help you sync your Medium posts with your own Jekyll blog. It will automatically download your posts from Medium, convert them to Markdown, and upload them to your repository. 

If you find this tool helpful, please consider to [buy me a coffee](https://www.buymeacoffee.com/zhgchgli).❤️

Powered by [Jekyll](https://jekyllrb.com/) with [Chirpy theme](https://github.com/cotes2020/jekyll-theme-chirpy).

Also, if you would like to remove the ZMediumToMarkdown watermark located at the bottom of the page, you may do so. I don't mind.

[![Buy Me A Coffe](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20beer!&emoji=%F0%9F%8D%BA&slug=zhgchgli&button_colour=FFDD00&font_colour=000000&font_family=Bree&outline_colour=000000&coffee_colour=ffffff)](https://www.buymeacoffee.com/zhgchgli)

# First-time run
Please refer to the configuration information in the section below and make sure to specify your Medium username in the `_zmediumtomarkdown.yml` file.

Then, you can manually run the ZMediumToMarkdown GitHub action by going to the `Actions` tab in your GitHub repository, selecting the `ZMediumToMarkdown` action, clicking on the `Run workflow` button, and selecting the `main` branch.

You can check the progress of the ZMediumToMarkdown action on the same GitHub action page.

**Please wait for the action to download, convert, and commit your posts to your repository (note that the first run may be slow).**

Once the ZMediumToMarkdown action has completed, **you should wait for the Automatic Build & Deploy action to finish**.

After this is done, you can visit your `xxx.github.io` page to check the results or use `bundle exec jekyll serve` in your terminal for local testing.

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

### Things to know

**Every commit and post change will trigger the Automatic Build & Deploy action. Please wait for this action to finish before checking the final result.**

You can create your own Markdown posts in the _posts directory by naming the file as `YYYY-MM-DD-POSTNAME`.

You can include images and other resources in the /assets directory.

Additionally, you may delete this introductory post.