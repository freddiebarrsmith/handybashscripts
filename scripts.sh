#this script is to loop through files in a given directory and output them by when they were added to the git repo

FILES=/directory/configs/*
for f in $FILES
do
  git log --format=%aD $f | tail -1
done


this is to do it for a specific date

for f in $FILES
do
  echo $f
  git log --format=%aD $f | tail -1 | grep "2016\|2017"

done


to remove old kernel images from a machine:

dpkg --list | grep linux-image | awk '{ print $2 }' | sort -V | sed -n '/'`uname -r`'/q;p' | xargs  apt-get -y purge
