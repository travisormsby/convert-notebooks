#!/bin/bash

echo $INPUT_CHANGED_FILES

for FILE in $INPUT_CHANGED_FILES; do
  if [[ $FILE == *.ipynb ]]; then
    echo Hello world my name is $FILE
  fi
done