Why get started with Jekyll?
---
1. GitHub pages will host your Jekyll website for free with super-fast servers and CDNs (servers around the world).
2. Jekyll is a simple yet powerful framework that helps structure a basic HTML site for easy use as a Blog, Portfolio, or any website.
3. Jekyll on GitHub pages is **faster** than Wordpress, **cheaper** than Squarespace, and is more **professional** than Wix.
4. Learn the basics below to buy a domain, setup your GitHub pages repo, and start building with Jekyll.

Unix Terminal
---
- **History Lesson** Before macOS, Windows, and *Graphical User Interfaces (GUI)*, all computer interaction was done through a *Command Line Interface (CLI)*. Using short text commands, many of the same interactions could be completed.
- **Example** To see your files in a GUI you would open `Finder` on macOS, see a listing of your files, and then double click to enter subfolders. In a CLI, you would use the command `ls` to see the files in the initial folder, and `cd` to enter into different subfolders.
- **Why?** To setup a website on GitHub pages, you'll need to use some basic commands in Terminal to navigate to your project folder, start the Docker development environment, and commit your changes with `git` to push the website live.

**Unix Terminal Commands**
- `pwd` **p**rint **w**orking **d**irectory (where you are right now)
- `ls` **l**i**s**ts the files in the current directory
  - `ls -a` lists **a**ll (including hidden) files
  - `ls -l` **l**ong listing of files in a table with metadata (owner, permissions, size...)
  - `ls -la` **l**ong listing of **a**ll (including hidden) files in the extended table
- `cd {directory}` **c**hange **d**irectory (directory = folder)
  - `cd Folder1` will move you into Folder1 if it exists
  - `cd ..` will move you to the parent directory of the current folder
  - `..` is always shortcut to parent directory.
  - `.` is always shortcut to current directory.

Git
---
- **tldr;** when you're done a number of related changes, run in Termainal `make save` (special command in `get-started-with-jekyll`). It will save all changes and push them live on your website. It does the following:
  - `git add .` adds all changed files to a commit
  - `git commit -m "{message}"` prompts for a commit message
  - `git push` deploys code to server

**Want to learn more?**
- Git is a source control system. It keeps track of changes in code and provides a structured history of all changes over time. Git is remarkably powerful and complex providing countless commands and ways to do things to allow many people to work on the same project.
- Each point in history is a `commit`. A `commit` consists of all files that have changed since the previous one that are manually added to the `commit`. For example, if you're in the middle of working on `PageA.html` but there's other work that is done unrelated to `PageA.html`, then you can make a commit of that work without waiting for `PageA.html` to be done.
- `git status` shows files organized to show
  - `untracked` new files not part of git tracking yet
  - `unstaged` tracked files that have changed but not yet added to commit
  - `staged` files added to current commit
- `git add {files}` adds the files that you list to the current `commit` (and tracks them if not already tracked). If you want to add all files that have been changed, use `git add .`.
- `git commit -m "{message}"` packages all the currently staged files into a commit with the specified message. The message is required and should describe the current state of the code.
  - Useful message: `Spaghetti and meatsauce post finished, interactive button in footer`
  - Not useful message: `Changed spaghetti.html, main.css, footer.html, interaction.js, main.js, button.js, head.html`
- `git push` updates the server with all local commits. In our case the server is GitHub pages, and any pushed commits immediately go live on your website.
- `git pull` updates your local code with any changes from the server. This is useful if working with other people or on multiple computers.

Getting Started
---
1. Prepare your computer by installing Git, Docker, Atom.
  - On a Mac, the following bootstrap script will do just this
  - `$ curl bootstrap | bash -s `
1. Find a Jekyll theme that you'd like to use and download a .zip file of the theme code to your computer.
1. Sign up for a GitHub account.
1. Create a new repository (repo) named `{your github username}.github.io`.
  - It will take you to a page with instructions for adding files to your repo from your Terminal.
  - Use these instructions to upload the code from the Jekyll theme you found.
