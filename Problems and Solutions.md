# Problems and Solutions #

These are some problems we have come across along with the best known solutions.

**Students cannot run their REPL, the tests do not run on GitHub, or REPL says "Cannot find main.sh"**
* Cause: The student did not click the "update" link.
* Commit and push any changes from REPL to GitHub.
* Delete the REPL.
* Go back to It'sLearning and click the assignment link.
* Click the "update" link below the link to the repo and wait for it to silently finish.
* Go to the repo and click the "Work on Repl.it" button.

**Students cannot import their repo on Repl.it, or are constantly prompted to upgrade to the hacker plan to import private repos.**
* Have the student log out of repl.it.
* Have the student login to repl.it using GitHub (the cat silhouette)
* Now they should be able to go back to their repo, click the "Work in Repl.it" button and it should work.
	
**Student's repl says it is ahead and/or behind in commits on the Version Control tab.**
* copy and paste your code into a text file
* `Ctrl-Shift-S` to get a shell window
* `git fetch origin`
* `git reset --hard origin/main`
* paste your copied code into repl to get back where you were
* commit and push as normal
	
**Students get a 500 Internal Server Error when clicking the "update" link.**
* Check the repo.  Usually the update worked.  Check for the presence of the `.github` folder and the black "Work in Repl.it" button in the `README.md`. 

**GitHub is trying to install Repl.it, but it is already installed so you can't click the save button.**
* **Possible simpler method.  Try this first and report success or failure.**
  * Log out of Repl.
  * Login to Repl using GitHub (click on the cat silhouette).
  * Go back to your repo and click the "Work in Repl.it" button.
* **This works, but the above option is simpler, if it works reliably.  Still testing.**
  * On the page where you can't click the save button, scroll down to the "Danger Zone" and click "Uninstall Repl.it".
  * Go back to your repo and click the "Work in Repl.it" button.
  * Click what you need to to install Repl.it again.

**Students click "Work on Repl.it" button, but when Repl.it loads there are no files or files are missing.**
* Go back to their repo and click the button again.  It may take a few tries, but it will work.

**Students accept the assignment, but files are missing from the repository.**
* Go to the repository settings and delete the repository.
* Click on the assignment link again and re-accept the assignment.
* Don't forget to click the "update" button.
* If that doesn't work
   * The teacher needs to add the missing files manually via upload
   * Have the student click the "update" link
   * The student needs to go to Repl.it and delete any Repls for this lab.
   * The student then can go back to their repo and click the "Work in Repl.it" button and it should work.

**Students attempt to Commmit and Push, but nothing happens.**
* Likely cause is a lockfile from a failed Commit and Push.
* `Ctrl-Shift-S` to open a shell window.
* Enter the command `rm .git/index.lock`
* The Commit and Push should work now.
