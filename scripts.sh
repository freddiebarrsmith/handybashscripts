#this script is to loop through files in a given directory and output them by when they were added to the git repo

FILES=/directory/configs/*
for f in $FILES
do
  git log --format=%aD $f | tail -1
done
