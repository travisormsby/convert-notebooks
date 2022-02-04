#!/bin/bash

echo $INPUT_CHANGED_FILES

for FILE in $INPUT_CHANGED_FILES; do
  if [[ $FILE == *.ipynb ]]; then
    jupyter nbconvert --template=collapsible_headings --to html $FILE
    git add $FILE
  fi
done

git commit -m "update html"
git push