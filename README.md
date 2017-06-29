Why Get-Started-with-Jekyll?
===
1. GitHub Pages will host your Jekyll website for free with super-fast servers and CDNs (servers around the world).
2. Jekyll is a simple yet powerful framework that helps structure a basic HTML site for easy use as a Blog, Portfolio, or any website.
3. Jekyll on GitHub Pages is **faster** than Wordpress, **cheaper** than Squarespace, and is more **professional** than Wix.
4. Learn the basics below to [buy a domain](https://affiliate.namecheap.com/?affId=118144), setup your GitHub Pages repo, and start building your Jekyll blog.

Guide
---
- [Getting Started](#getting-started)
- [Unix Terminal Basics](#unix-terminal)
  - [Terminal Commands](#unix-terminal-commands)
- [Git](#git)
  - [Details](#git-details)
  - [Terminal Commands](#git-commands)
- [Docker](#docker)
  - [Jekyll on Docker](#why-jekyll-on-docker)
  - [Docker Commands](#docker-commands)
- [Jekyll Build Server](#jekyll-build-server)
- [Resources](#resources)
  - [GitHub Pages](https://pages.github.com/)
  - [Jekyll docs](https://jekyllrb.com/docs/home/)
  - [Liquid Language docs](https://shopify.github.io/liquid/)
  - [GitHub Pages Custom Domains docs](https://help.github.com/articles/using-a-custom-domain-with-github-pages/)
  - [Namecheap Domains](https://affiliate.namecheap.com/?affId=118144)

Getting Started
===
1. **Prepare your computer by installing Git, Docker, Atom**
    - On a Mac, the following bootstrap script will do just this. Copy this into your Terminal:
      ```
      $ cd ${HOME}/; curl -sO https://raw.githubusercontent.com/andrewparadi/.files/master/bootstrap.sh; chmod +x ${HOME}/bootstrap.sh; ${HOME}/bootstrap.sh -d ${HOME}/.ap-files -p mac_jekyll; rm ${HOME}/bootstrap.sh; rm -rf ${HOME}/.ap-files/; cd -
      ```
    - It will download the requirements and run setup configuration using my [`.files` provisioning script](https://github.com/andrewparadi/.files)
1. **Find a Jekyll theme**
    - Search for a theme you'd like to use
    - Download a .zip file of the theme code to your computer
1. **Sign up for a GitHub account**
    - [Join here](https://github.com/join), and signup for the free plan
1. **Create a new repository (repo) on GitHub named ```{your github username}.github.io```**
    - It will take you to a page with instructions for adding files to your repo from your Terminal.
    - Consider keeping your code in a ```src``` directory, ie. ```~/src/github.com/{your github username}.github.io``` where ```~``` is your home folder on your computer
      - Create a new folder with this code snippet in Terminal:
        ```
        $ mkdir -p ~/src/github.com/{your github username}.github.io
        ```
    - Use these instructions to upload the code from the Jekyll theme you found.
1. **Install Docker build tools for Jekyll**
    - Why? [Read more about Jekyll on Docker below.](#docker)
    - Navigate with ```cd``` to your repo on your computer.
    - Run the following script which will download (or update) a `Makefile` and `docker-compose.yml` file
      ```
      $ curl -sO https://raw.githubusercontent.com/andrewparadi/get-started-with-jekyll/master/bootstrap.sh; chmod +x bootstrap.sh; ./bootstrap.sh; rm ./bootstrap.sh
      ```
1. **Start your local Jekyll server**
    - Start your local Jekyll server by typing ```make``` into Terminal when in your repo directory.
    - Docker will download the Jekyll image and build your site.
    - Your website will now be accessible only to your computer at [http://0.0.0.0:4000/](http://0.0.0.0:4000/).
1. **You're ready to write code locally!**
    - Check out the [Jekyll docs](https://jekyllrb.com/docs/home/) and [Liquid Language docs](https://shopify.github.io/liquid/) to understand how Jekyll is organized and start coding your blog.
    - To learn more about the Jekyll build server that is running your website at [http://0.0.0.0:4000/](http://0.0.0.0:4000/), scroll down to [that section](#jekyll-build-server).
1. **Push it live 😎**
    - When you're ready to push your local changes live to GitHub Pages, use the ```git add, commit, push``` workflow as outlined [below](#git).
    - You can also use ```make save``` instead, [read more here](#docker-commands).
    - Your site will now be available at ```www.{github username}.github.io/``` or your custom domain if you've set that up.
1. **Fin.**

Unix Terminal
===
- **History Lesson** Before macOS, Windows, and *Graphical User Interfaces (GUI)*, all computer interaction was done through a *Command Line Interface (CLI)*. Using short text commands instead of a clicking around with a mouse, most of the same interactions could be completed.
- **Example** To see your files in a GUI you would open `Finder` on macOS, see a listing of your files, and then double click to enter subfolders. In a CLI, you would use the command ```ls``` to see the files in the initial folder, and ```cd``` to enter into different subfolders.
- **Why learn all this?** To setup a website on GitHub Pages, you'll need to use some basic commands in Terminal to navigate to your project folder, start the Docker development environment, and commit your changes with ```git``` to push the website live.

Unix Terminal Commands
---
- ```pwd``` **p**rint **w**orking **d**irectory (where you are right now)
- ```ls``` **l**i**s**ts the files in the current directory
  - ```ls -a``` lists **a**ll (including hidden) files
  - ```ls -l``` **l**ong listing of files in a table with metadata (owner, permissions, size...)
  - ```ls -la``` **l**ong listing of **a**ll (including hidden) files in the extended table
- ```cd {directory}``` **c**hange **d**irectory (directory = folder)
  - ```cd Folder1``` will move you into Folder1 if it exists
  - ```cd ..``` will move you to the parent directory of the current folder
  - ```..``` is always shortcut to parent directory.
  - ```.``` is always shortcut to current directory.
- ```mkdir {directory}``` creates a new directory
  - ```mkdir -p {/path/to/directory}``` creates all uncreated directories in a given path

Git
===
- **tldr;** when you're done a number of related changes, run in Termainal ```make save``` (special command in `get-started-with-jekyll`). It will save all changes and push them live on your website. It does the following:
  - ```git add .``` adds all changed files to a commit
  - ```git commit -m "{message}"``` prompts for a commit message
  - ```git push``` deploys code to GitHub Pages

Git Details
---
- Git is a source control system. It keeps track of changes in code and provides a structured history of all changes over time. Git is remarkably powerful and complex providing countless commands and ways to do things to allow many people to work on the same project.
- Each point in history is a `commit`. A `commit` allows you to break up the progress of your code into chunks of progress, like each time a new feature or post is finished.
- **Warning** Don't use commits like a save button! Your history will end up very long and not useful to see the progress of the project. Below, you'll see how to build Jekyll locally and then you only need to commit once you've finished the post (instead of saving each time to test in your browser).
- Commits also don't need to include every changed file. For example, if you're in the middle of working on `PageA.html` but there's other work that is done unrelated to `PageA.html`, then you can make a commit of that work without waiting for `PageA.html` to be done.

Git Commands
---
- ```git status``` shows files organized to show
  - ```untracked``` new files not part of git tracking yet
  - ```unstaged``` tracked files that have changed but not yet added to commit
  - ```staged``` files added to current commit
- ```git add {files}``` adds the files that you list to the current `commit` (and tracks them if not already tracked). If you want to add all files that have been changed, use ```git add .```.
- ```git commit -m "{message}"``` packages all the currently staged files into a commit with the specified message. The message is required and should describe the current state of the code.
  - Useful message: ```Spaghetti and meatsauce post``` or ```[CLOSES #42] Footer button animations``` to close GitHub issue feature request
  - Not useful message: ```Changed spaghetti.html, main.css, footer.html, interaction.js, main.js, button.js, head.html```. This doesn't tell anyone reading your commit history what actually was done, what feature or post was finished.
- ```git push``` updates the server with all local commits. In our case the server is GitHub Pages, and any pushed commits immediately go live on your website.
- ```git pull``` updates your local code with any changes from the server.
  - **Warning** You'll want to always ```pull``` before you ```push``` if working with other people or on multiple computers so you don't overwrite changes on the server that aren't on your local computer yet.

Docker
===
- Docker is a popular container framework. But what does that mean?
  > "Using containers, everything required to make a piece of software run is packaged into isolated containers. Unlike VMs, containers do not bundle a full operating system - only libraries and settings required to make the software work are needed. This makes for efficient, lightweight, self-contained systems and guarantees that software will always run the same, regardless of where it’s deployed." [- Docker](https://www.docker.com/what-docker) (Jun 29, 2017)
- By not including the host operating system (OS) in their virtual machine (VM) like containers, Docker makes it more efficient to run many containers on your computer at the same time since each container won't have repeated overhead by a having a host OS.
- For a simple project like a blog, we will only need our single Jekyll container.
- For larger projects that may have a front end, backend api, and database for example, multiple Docker containers can be linked together for each of the functions (frontend, backend, database) and started, stopped, and updated independently.

Why Jekyll on Docker?
---
- Jekyll requires a set of software to build locally which includes [Ruby](https://www.ruby-lang.org/en/downloads/), [RubyGems](https://rubygems.org/pages/download), [GCC](https://gcc.gnu.org/install/), and [Make](https://www.gnu.org/software/make/).
- It can be a hassle to set the specific version requirements for each of these required packages (especially if you have different requirements for other projects you're working on). This is where Docker comes in!
- With Docker, we can hold all of our Jekyll software requirements in a self-contained environment. This guide uses the official [Jekyll Docker image](https://hub.docker.com/r/jekyll/jekyll/) that has all of the required software included, so you don't need to set up anything!
- If you decide you don't want to do Jekyll development anymore, Docker makes it easy to remove all of the required build software, since it's entirely self-contained to the specific Docker container.

Docker Commands
---
- This guide includes a [Makefile](./Makefile) to abstract long Docker run commands to simply the following. If you want to see the full Docker commands, just open up [Makefile](./Makefile) in your text editor and you can learn more.
  - ```make | make run```: Builds and runs Jekyll server making your website available at [http://0.0.0.0:4000/](http://0.0.0.0:4000/).
  - ```make compile```: Builds Jekyll to build folder but doesn't serve it
  - ```make rebuild```: Builds Jekyll without caching (takes a bit longer)
  - ```make save```: Runs ```git add, commit, push``` flow to deploy all local changes to GitHub Pages.
- If you want to **free up disk space** that Docker doesn't need anymore (or you're getting rid of Docker), run these commands.
  - ```docker kill $(docker ps -q)``` - kill all running Docker containers
  - ```docker rm $(docker ps -a -q)``` - delete all Docker containers
  - ```docker rmi -f $(docker images -q)``` - delete all Docker images (the recipe to build a container)
  - ```docker volume prune``` - free other related Docker disk space

Jekyll Build Server
===
- Jekyll build server lets you test your website locally before pushing it live to GitHub pages.
- It continuously builds your website and makes it available locally to [http://0.0.0.0:4000/](http://0.0.0.0:4000/).
  - **Continuous build** means that everytime to save a chance in your text editor, the server will rebuild Jekyll and in ~15 seconds or less, you'll see your changes reflected when you refresh [http://0.0.0.0:4000/](http://0.0.0.0:4000/).
- Since this is a local build server, you don't need to worry about anyone else seeing the changes. It will only go public when you ```make save``` or ```git add```, ```commit``` and ```push``` it to GitHub Pages.
- **Warning!** Any errors while you're writing code will show up in the Terminal. Most errors will tell you what line of which file has an issue so you can go back and fix it.
- If the server dies or stops building your site, you may need to restart the server. Do this by typing using ```ctrl-c``` (on other documentation online, this may be written as ```C-c``` but it's still the same ```crtl-c``` keys pressed). Once the server has shut down, restart it by typing ```make``` again.

Resources
===
- [GitHub Pages](https://pages.github.com/)
- [Jekyll docs](https://jekyllrb.com/docs/home/)
- [Liquid Language docs](https://shopify.github.io/liquid/)
- [GitHub Pages Custom Domains docs](https://help.github.com/articles/using-a-custom-domain-with-github-pages/)
- [Namecheap Domains](https://affiliate.namecheap.com/?affId=118144)
