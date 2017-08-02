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


to get ipv6 address for a hostname:

dig  google.com AAAA +short

toget ipv4 address for a hostname:

dig  google.com A +short


to read through file line by line :

while read domain;
do
        echo $domain
        echo "rekt"
done < domainnames.txt

this finds out whether a domain will pass validation, you can run it from a mailserver

exim -bvs JPMorgan_Chase@jpmcstaffing.com

the following command basically runs watch to grep for a specific service, this means it is constantly refreshing every 1 second
if you dont have the apostrophes then it will return blank :S

watch -n1 'netstat -autpn | grep pgbouncer'

seeing connections to a particular ip:

 watch -n1 'netstat -autpn | grep 129.67.1.223'

