# GitHub Intro
## BSA REU 2022
These are instructions for setting up GitHub on your own computer if you haven't before. In this quick tutorial, we'll be showing you how to `clone` a *repository* of code found on GitHub and `fork` it to make a copy of your own. We'll describe how to `pull` to retrieve updated versions of code. Then we'll demonstrate editing this code, then `add`ing, `commit`ting and `push`ing to track the changes you made. **TO DO items will be bolded.**

### What is GitHub?
GitHub is a code hosting platform used for version control and collaboration, to keep track of changes made in code over time by an unlimited number of people. This is a very powerful and useful tool to be able to use!

## Set-up
Make sure you have your GitHub account set up and your username available. Additionally, ensure Git is properly installed on your computer. (Download instructions here: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

**Navigate to a command line interface. As a default, for Mac, search using Command+Space and type "terminal". For Windows, search for "powershell" in the search bar and open the application.**

**Set your GitHub user name using `git config --global user.name "FIRST_NAME LAST_NAME"`. Set up your github commits to be associated with your account using `git config --global user.email "email@example.com"`. Make sure this email is added to your account on GitHub (this can be done in settings) so that the changes you make are associated with you. You can check that name and email are set correctly using `git config --global user.name` and `git config --global user.email`.**

### Terminal Commands
The terminal is a text-based interface used to interact with our computer, rather than a GUI-based one that we are used to. There are a few simple commands that we will need to navigate our computer using this way of interacting with our computer.
* pwd: principal working directory
* cd: change directory
* ls: list

**In your terminal window, navigate to whichever directory you would like to put a new REU folder in (i.e. /Documents, /Desktop, etc) using the terminal commands.** 
A few tips: 
* 'tab' can help you fill in the name of the folder if you type the first few characters
* 'cd ~' takes you home
* 'cd ..' takes you back a folder.
* you can also go forward and back through multiple folders at once if you know the path - for example 'cd Documents/REU2022' or 'cd ../../srv/data/'

## Accessing the remote repository
Click on the link to the repository that we'll be using here: https://github.com/bouldersolarreu/programming-tutorials

This is a folder of introduction tutorials that we'll be using throughout bootcamp week. This is where the code is hosted, so we can always see the most updated version of the code here. You'll notice you can see rendered versions of almost all code. If python notebooks don't load, try refreshing the page.

## Forking and creating a local repository
** Click the button in the top right corner that says "fork" on it and then click the green "Create fork" button. ** Clicking on this button should take you to a page that looks very similar to the previous repository, but now you have your own copy of it that is associated with your own account. Notice that the link to access the new repository has your username in the URL. You could share this URL with anyone else for them to see your code (unless the repo is private)! `fork`ing allows you to make and track changes in your own copy of the repository without affecting the original code.

**Now click the green dropdown button that says "Code" on it and copy the HTTPS link. Go back to the terminal window you created and type `git clone` and paste the copied link.** It should look like `git clone https://github.com/[your-github-username]/programming-tutorials.git`. The `clone` command makes a local copy of all the files in the repository locally on your computer. Now `cd` into this new created folder. (Remember: you can type `ls` in the terminal to see which files are in your current directory and `pwd` to see your current directory)

Great! We've now created a copy of the code we'll be using that we can open locally on our own computers!

## Making edits
Now, we'd like to be able to make changes to our code and have it tracked on the remote repository.

For now, let's just add our names to the README file. **Go to this newly created repository folder and open the README file in any text editor you want. In the line "Summer 2022", let's just add our names as a test like so: "FIRST_NAME LAST_NAME, Summer 2022".** To have git track our changes, we will need to use the commands `git add`, `git commit`, and `git push`. For the most part we will use these commands in exactly that order. Below is a description of some basic github commands. There are many, many useful github tutorials that can be found online with a quick google search.

### Basic git commands
`git add`: The command `git add .` adds all the files that you have created on your computer to the staging area. This means the changes to these files are ones that you want to keep track of. We can also add only specific files using `git add filename1 filename2 filename3`.

`git commit`: Committing means tracking our progress and changes as we work. Usually, after adding files, using `git commit -m "message stating what changes have been made"` is easiest. These commit messages should be *short, specific and descriptive.* This is very important as it is what others will read to summarize the changes that you have made! You can read here if you want to know more details about committing: https://git-scm.com/docs/git-commit.

`git push`: Pushing updates the remote repository (the repository which can be accessed using the github.com link) with committed changes.

`git status`: This is often used before and after `add`ing files to the staging area. This command lets you see which changes have been staged, which haven't, and which files aren't being tracked.

`git log`: This gives a log of all the changes which have been made in this repository.

**After making the changes to the README file, in our terminal window we use `git add README.md`, `git commit -m "edited README to add my name"`, and finally `git push`.** If we refresh the github page of our forked repository online, we should now be able to see these changes that were made!

### Branches
In the top left, there is a dropdown menu which allows you to access different `branch`es, or versions, of the code repository. If you click on it, a type box will be revealed which says "Find or create a branch..." along with the names of some branches. With the tutorials, the `solutions` branch will give solutions to all versions of the tutorials that we will be working with throughout bootcamp week.