FILES=/directory/configs/*
for f in $FILES
do
  git log --format=%aD $f | tail -1
done
