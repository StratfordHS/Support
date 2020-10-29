#!/bin/bash

# prints a list of all of the repos in an organization to stdout.  Capture into a file to edit.

# Modify USERNAME to hold your username.
# Modify TOKEN to hold an access token created at GitHub.com

# Usage:
# ./get_repo_list_from_org.sh StratfordHS-APCS

USERNAME=""
TOKEN=""
ORG=$1

curl -u $USERNAME:$TOKEN -s "https://api.github.com/orgs/$ORG/repos?per_page=100&type=all" | ./jq-win64.exe -r '.[].full_name'
