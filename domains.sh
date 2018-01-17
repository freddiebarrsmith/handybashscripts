

#!/bin/bash
for domain in `cat domainidentifying.txt`
do
   echo $domain
   dig +short $domain
#   `whois $domain >> whois-results.txt`
done

#for when you want to resolve a bunch of domains or vice versa
