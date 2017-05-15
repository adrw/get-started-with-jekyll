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

Basic Commands
---
- `pwd` **p**rint **w**orking **d**irectory (where you are right now)
- `ls` **l**i**s**ts the files in the current directory
  - `ls -a` lists **a**ll (including hidden) files
  - `ls -l` **l**ong listing of files in a table with metadata (owner, permissions, size...)
  - `ls -la` **l**ong listing of **a**ll (including hidden) files in the extended table
- `cd` *change directory*
  - `cd Folder1` will move you into Folder1 if it exists
  - `cd ..` will move you to the parent directory of the current folder



Getting Started
---
1. Prepare your computer by installing Git, Docker, Atom.
  - On a Mac, the following bootstrap script will do just this
  - `$ curl bootstrap | bash -s `
2. Find a Jekyll theme that you'd like to use
  - Once you've found one, download it or if it's a Git repository
  -
