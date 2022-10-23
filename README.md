# To do local site testing & Troubleshooting:
1. open git bash
2. navigate to folder with website files using `cd` + filepath (need to do double \\\)
   - personal site: `C:\\Users\\dcayl\\Documents\\GitHub\\dcayll.github.io`
   - personal site testing: `C:\\Users\\dcayl\\Documents\\GitHub\\dcayll.github.io\\test`
   - example minimal mistakes site: `C:\\Users\\dcayl\\Documents\\GitHub\\dcayll_minimal-mistakeCopy.github.io`
   - example minimal mistakes site testing: `C:\\Users\\dcayl\\Documents\\GitHub\\dcayll_minimal-mistakeCopy.github.io\\test`
3. run command `bundle install`
4. run command `bundle exec jekyll serve`
5. to run multiple servers add a port `bundle exec jekyll serve --port 4001`
  - iterate the `'4001' to open multiple ports`
6. now git bash is a virtual server (at http://127.0.0.1:4000/) which hosts the files inside the folder from step 2.
  - note that the port number may change based on which repository is opened in which port
  - any changes made and saved in the code will show up as changes in the website

# To create and import Jupyter notebooks into the Jekyll website

1. create jupyter notebook in `_jupyter` folder in website path.
2. convert jupyter notebook to a .md file
    - open python terminal (through anaconda navigator)
    - type in: `cd C:\Users\dcayl\Documents\GitHub\dcayll.github.io\_jupyter` to navigate to the jupyter notebook folder
    - then `jupyter nbconvert --to markdown *filename*.ipynb` to convert the jupyter notebook into a markdown file.
3. Now, the notebook should be converted into a .md file in the same `_jupyter` folder with all figures saved as .png files in a folder with the same name as the jupyter notebook file.
4. Finally, the folder including all the images must be copied into the `assets` folder so the .md file can display it.
5. Lastly, you can add the front matter to ensure the file is sorted correctly. for example:
`---
title: "test Analysis"
excerpt: "back of the envelope calculations"
categories:
  - engineering
tags:
  - calculations
  - physics
---`



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

Sometimes, if a collection doesnt show up when you think it should be, restart git bash. When there are names of collections or defaults changed, jekyll needs to redo the whole configuration process by restarting git bash.

If you have a question about using Jekyll, start a discussion on the [Jekyll Forum](https://talk.jekyllrb.com/) or [StackOverflow](https://stackoverflow.com/questions/tagged/jekyll). Other resources:

- [Ruby 101](https://jekyllrb.com/docs/ruby-101/)
- [Setting up a Jekyll site with GitHub Pages](https://jekyllrb.com/docs/github-pages/)
- [Configuring GitHub Metadata](https://github.com/jekyll/github-metadata/blob/master/docs/configuration.md#configuration) to work properly when developing locally and avoid `No GitHub API authentication could be found. Some fields may be missing or have incorrect data.` warnings.
