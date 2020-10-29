#!/bin/bash

# Create an authorization token at GitHub.com and replace TOKEN with your token.
# Usage:
# ./bulk_delete_repos.py filename.txt
# filename.txt is a list of repo names to delete, one per line (example: lab-00-hello-world-username)

while read i
do 
	repo=$(echo $i | xargs)
	echo "Deleting $repo"
	curl -XDELETE -H 'Authorization: token TOKEN' "https://api.github.com/repos/$repo"
done < $1 
