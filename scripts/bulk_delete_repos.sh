#!/bin/bash

# Create an authorization token at GitHub.com and put it in TOKEN.
# Usage:
# ./bulk_delete_repos.py filename.txt
# filename.txt is a list of repo names to delete, one per line (example: StratfordHS-APCS/lab-00-hello-world-username)
# Use get_repo_list_from_org.sh to create the list

TOKEN=""

while read i
do 
	repo=$(echo $i | xargs)
	echo "Deleting $repo"
	curl -XDELETE -H 'Authorization: token $TOKEN' "https://api.github.com/repos/$repo"
done < $1 
