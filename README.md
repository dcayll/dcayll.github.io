# To do local site testing & Troubleshooting:
1. open git bash
2. navigate to folder with website files using `cd` + filepath (need to do double \\\)
   - personal site: `C:\\Users\\dcayl\\Documents\\GitHub\\dcayll.github.io`
   - personal site testing: `C:\\Users\\dcayl\\Documents\\GitHub\\dcayll.github.io\\test`
   - example minimal mistakes site: `C:\\Users\\dcayl\\Documents\\GitHub\\dcayll_minimal-mistakeCopy.github.io`
   - example minimal mistakes site testing: `C:\\Users\\dcayl\\Documents\\GitHub\\dcayll_minimal-mistakeCopy.github.io\\tests`
3. run command `bundle install`
4. run command `bundle exec jekyll serve`
5. to run multiple servers add a port `bundle exec jekyll serve --port 4001`
  - iterate the `4001' to open multiple ports`
6. now git bash is a virtual server (at http://127.0.0.1:4000/) which hosts the files inside the folder from step 2.
  - note that the port number may change based on which repository is opened in which port
  - any changes made and saved in the code will show up as changes in the website

# Minimal Mistakes clone for personal website

Click [**Use this template**](https://github.com/mmistakes/mm-github-pages-starter/generate) button above for the quickest method of getting started with the [Minimal Mistakes Jekyll theme](https://github.com/mmistakes/minimal-mistakes).

Contains basic configuration to get you a site with:

- Sample posts.
- Sample top navigation.
- Sample author sidebar with social links.
- Sample footer links.
- Paginated home page.
- Archive pages for posts grouped by year, category, and tag.
- Sample about page.
- Sample 404 page.
- Site wide search.

Replace sample content with your own and [configure as necessary](https://mmistakes.github.io/minimal-mistakes/docs/configuration/).

---

## Troubleshooting

If you have a question about using Jekyll, start a discussion on the [Jekyll Forum](https://talk.jekyllrb.com/) or [StackOverflow](https://stackoverflow.com/questions/tagged/jekyll). Other resources:

- [Ruby 101](https://jekyllrb.com/docs/ruby-101/)
- [Setting up a Jekyll site with GitHub Pages](https://jekyllrb.com/docs/github-pages/)
- [Configuring GitHub Metadata](https://github.com/jekyll/github-metadata/blob/master/docs/configuration.md#configuration) to work properly when developing locally and avoid `No GitHub API authentication could be found. Some fields may be missing or have incorrect data.` warnings.
