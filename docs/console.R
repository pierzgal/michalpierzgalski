# Site building

library(blogdown)

blogdown::install_hugo(
  version = "latest",
  use_brew = Sys.which("brew") != "",
  force = T,
  extended = TRUE
)
blogdown::install_hugo()
blogdown::update_hugo()

file.create('.nojekyll')


# --- 1
blogdown::new_site(theme = "dillonzq/Lovelt")

blogdown::new_site(theme = "pacollins/hugo-future-imperfect-slim")
blogdown::new_site(theme = "alexandrevicenzi/soho")
blogdown::serve_site()


blogdown::build_site()
blogdown::stop_server()



# --- 2

# 1 Create repo on github; add README file and set license;
# 2 Set page in docs folder;
# 3 Create version control project in RStudio connected with related github repo (RStudio will clone this repo on your local drive);
# 4 Make first commit: git add docs/ --> Git button --> "First commit" --> Click Commit --> if OK, click Push;
# 5 Install and load blogdown;
# 6 Create docs folder;
# 7 Create .nojekyll file and then place it in the docs folder;
# 8 blogdown::new_site(theme = "alexandrevicenzi/soho")
# 9 In config.toml:
# - set base url, e.g. baseurl = "https://pierzgal.github.io/michalpierzgalski/"
# - add ignoreFiles = ["\\.Rmd$", "\\.Rmarkdown$", "_files$", "_cache$"]
# - add publishDir = "docs"
#
# blogdown::serve_site()
# blogdown::build_site()
#
# Move site files to github repo:
# - in Terminal: git add docs/
# - Git button (upper right window) --> click Commmit (give a name to a commit) --> click Push;
# - if you update site, repeat previous steps starting from blogdown::build_site().



blogdown::new_site(theme = "lxndrblz/anatole")
blogdown::serve_site()

blogdown::build_site()
blogdown::stop_server()



## GIT ------------------------------------------------------------------

# cd public
# git init
# git clone https://gitlab.com/pierzgal/zespolbadanwyborczych.uni.lodz.pl
# git status


# ---- Connect to remote git
# git remote add origin https://github.com/pierzgal/zespolbadanwyborczych
# git pull origin master

# git add docs/
# git push -u origin master

# ----



# git add --all

# git status
# git commit -m "first commit"
# git push origin master
