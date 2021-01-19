# GitHub Classroom with Repl.it Instructions for Teachers #


### Setting Up Organizations ###

Set up an organization for each class (StratfordHS-CS1, StratfordHS-CS2, StratfordHS-APCS).  The student repos will be prefixed by which class they are in, and won't all be lumped into the same organization.  Plus, there won't be any naming conflicts among starter repos between courses.


### Setting Up Classrooms ###

Set up a classroom for each course (like "Computer Science 1 - 2020-2021").

In the classroom, click on "Students" to manage your roster.  Input all of your student's names (or import from csv).  They will 'claim' their name the first time they open an assignment.  If you don't do this then they will show up as their github username in your list of submissions.  It's easy to copy from the Skyward gradebook, paste into Excel as plain text, then copy the column of names and paste into the text area on GitHub Classroom.


### Creating a Template Repository for an Assignment ###

Create assignment starter repos in the organization.  They will be mixed in with the student repos, but can be found easily if you use mixed case names (student repos are all lower case) and make them public (student repos are all private, so you can filter for public repos).  At the end of the year when we delete the assignments all student repos will be deleted, but the template repos will not.  Note: you must delete the assignment to remove student repos.  Deleting the classroom will delete the assignments, but not the student repos (as of 10/2020).  There are scripts in this repo that will help mass delete repos if needed.

When creating a repo you must have at least these files (and these filenames).
 * `README.md` - This contains the lab instructions.  Formatted using markdown.  Must have `README` in all caps.
 * `Main.java` - This is where REPL will start running by default.
 * `main.py` - This is what REPL will run by default.
 * `pom.xml` - For Java.  Use the one in this repo.
 * `test_main.py` - For PyTest unit tests.
 * `tests/TestMain.java` - For JUnit 4 tests.

**Steps**
1. Go to your organization.
2. Click the + to create a new repo
3. Select your organization as the owner and enter a name for the repo (example: "Lab-00-Hello-World")
4. You can choose either Public or Private.  I choose Public because the student's repos will be Private so it makes filtering an easy way to find my starter repos.
5. If you don't have a README.md file already then select "add a README file".
6. Select "Add .gitignore" and choose your language.
7. I don't select a license, but you can if you wish.

Once the repo is created you can upload files or edit it on REPL.it.

To upload files:
1. Select the dropdown "Add File" and choose "Add Files".
2. Drag and drop your files to be uploaded.
3. Click "Commit Changes".

To edit on REPL.it:
1. Copy the address of your repo
2. Go to REPL.it
3. Click the + to make a new REPL
4. Select "Import from GitHub"
5. Paste your repo's address, and select the repo it finds.
6. Click "Import from GitHub".
7. *(Optional: The .replit file will be created when you configure the assignment.  If you don't do this step then students will not be able to run their code if they didn't click the "update" link.  This is a good way to make sure they click the link.)* Select the language and run command as follows: 
    * For Python: 	
        * Language = Python
        * Run Command = `python main.py`

    * For Java: 	
        * Language = Java
        * Run Command = `javac *.java && java Main`

8. Create, modify, and/or upload all necessary files and folders.  This is not the best time to add solution code to test the tests unless you are using unit tests through pytest.
9. Click the "Version Control" icon under the "Files" icon to Commit and Push your changes to GitHub.

Make sure you go into the "Settings" for the repo and select "Template repository".


### Creating an Assignment ###

1. Go to [GitHub Classroom](https://classroom.github.com)
2. Select "Add Assignment" in the 3 dot menu for your classroom.
3. Give your assignment a name.  I give it the same name as the starter repo, but that's not a requirement.
4. Set an optional deadline.
5. Set Individual or Group assignment.
6. Repository visibility should be Private.
7. I do not recommend giving students admin access to their repo.
8. Click "Continue"
9. Select the repository with the starter code.  Start typing its name and the list will auto populate.
10. Import Method should be Template Repository.
11. Select REPL.it as the online IDE.
12. Where it says "Do you want to add a run command?" enter the following based on language.  If you do not do this, then the Run button won't work until the students edit a config file and add the run command manually.
    * Python: `python main.py`
    * Java: `javac *.java && java Main`
13. Specify the language.
14. "Continue"
15. If you get an error that the "Starter code repository is not a template repository..." then go to your starter code repo and select "Settings".  Check the box that makes it a "Template repository" and try again.
16. See the section on "Creating Tests" to create tests.
17. Check "Enable Feedback Pull Requests" to give you a way to give feedback to the students.
18. Click "Create Assignment"
19. These should only happen the first time you make an assignment.
    * You will see a pop-up message saying "Repl.it needs permission..."
    * Click the green button, accept the defaults, and click "Install and Authorize".
    * Go back to your assignment tab and click "I've granted access."


### Creating Tests ###

You have 4 options for tests.  Three of the options are under Input/Output tests, the 4th is running code (unit tests).

**Input/Output test:**
1. Name the test
2. Fill in any inputs as needed.
3. Fill in the correct output for the specified input.
	
    * **Comparison: Included** - Passes if the program's output contains the specified output anywhere in the output.  So, if the specified output is `World`, then user output of `Hello World`, `Hello World!`, `World`, and `I don't know what in the World I am doing` would all pass.
    * **Comparison: Exact** - Passes if the user output and specified output match exactly.
    * **Comparison: Regex** - `[.]*` matches any number of any character, `[Hh]` matches either `H` or `h`.  So, `[Hh]ello [Ww]orld[.]*` would match `Hello World!`, `hello World`, and `Hello worldddddddddddddd`.

4. Run Command: Enter the same run command as you did when creating the assignment.
    * Python: `python main.py`
    * Java: `javac *.java && java Main`

**Python code:**
* Setup command `sudo -H pip3 install pytest`
* Run command `pytest`
* Running a single test `pytest -k "test_method_name"`
* https://github.com/education/autograding-example-python

**Java code:**
* Setup command `mvn -q compile`
* Run command `mvn -q -Dtest=TestClassName#testMethodName test`
	
**To run checkstyle as a Java code test:**
* Setup command ""
* Run command `mvn -q verify` (if you're using the provided `pom.xml` file)

Set the test timeout down to 2 or 3 minutes.  If the tests haven't passed by then, then there's probably an infinite loop or input error that more time isn't going to get past.


### Testing the Assignment ###

You can test the assignment and tests yourself.
1. Copy the assignment acceptance link and paste in into a new tab.
2. Don't link yourself to a name, just say "skip to the next step...", but here is where the students would identify themselves.  This only happens once.
3. Click "Accept this assignment". (If you get a "forbidden" error when accepting an assignment, make sure the organization holding the assignment has granted third-party access to GitHub Classroom.)
4. Refresh the page until it says "You're ready to go!".
5. You ***must*** click "update" and wait for it to silently do it's thing.  If this is skipped, then none of the tests will load, and you won't have a "Work in Repl.it" button.  Go back to the "You're ready to go!" page and click "update".
6. Go to your repo and you should see a "Work in Repl.it" button at the top of the README.md.  If it is not there, try refreshing or clicking "update" again.


### Checking Test Results ###

Tests are automatically run every time you *Commit and Push*.  It can take a couple of minutes for the tests to trigger and run, so be patient.  In the blue header bar you will see either a goldish dot (testing in progress), red X (at least one test failed), or green checkmark (all tests passed).  You can click on it and click "Details" to see which tests failed.


### Help Forum ###

https://education.github.community/c/github-classroom/14


### Using Uploaded .jar Files ###
* Put the `.jar` files in the `./jars` directory.
* Set the run command to be `run = "export CLASSPATH=.:./jars/*; javac -d . *.java; java Main"`

