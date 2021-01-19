# How to Create a new Assignment from a Template Repository

### Template Repos

These are the template Java and Python repos that have been setup.

[StratfordHS/Java_Template](https://github.com/StratfordHS/Java-Template)  
[StratfordHS/Python_Template](https://github.com/StratfordHS/Python-Template)

### Instructions

#### On GitHub.com

1. Go to GitHub.com and select the "+" to create a new repo.
2. Select the appropriate template (listed above).
3. Select the appropriate Organization for the repo based on the course.
4. Select "Private" for repository visibility.
5. Click "Create Repository".
6. Under "Settings" check "Template Repository".
7. Edit the repository on REPL.it.

#### On REPL.it

1. Create and edit any code files as needed.  There must be a `main.py` unless you edit the `.replit` file to look for something else.
2. Edit the `.github/classroom/autograding.json` to create the appropriate tests (one of each type is included in the template repo).
3. Edit unit tests in `test_main.py` or in `tests/TestMain.java` as appropriate.  If you are not using unit tests you can ignore this file as long as you remove the unit test from `.github/classroom/autograding.json`.
4. Commit and push back to GitHub.  **Make sure you don't include solution code when you commit and push!**

#### On GitHub Classroom

1. Create a new assignment.
2. Set the name, due date, individual, and private. Click Continue.
3. Select the repo to use as a template for this lab.
4. Select Repl.it as the online IDE.
5. Select the language and set the run command appropriately (`python main.py` or `javac *.java && java Main` or custom).
6. Click Continue
7. DO NOT create any tests through the Classroom website.  The tests are already created.  Creating tests will overwrite what is already there.
8. Check "Enable Feedback Pull Requests" to give you a way to give feedback to the students.
9. Click "Create Assignment" and post the assignment acceptance link on It'sLearning.
