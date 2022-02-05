#!/bin/bash

for FILE in $INPUT_CHANGED_FILES; do
  if [[ $FILE == *.ipynb ]]; then
    jupyter nbconvert --template=collapsible_headings --to html_ch $FILE
  fi
done