#!/bin/bash

echo $INPUT_FILES_TO_CONVERT
OUTPUT=""
for FILE in $INPUT_FILES_TO_CONVERT; do
  if [[ $FILE == *.ipynb ]]; then
    jupyter nbconvert \
      --template=collapsible_headings \
      --to html_ch \
      --no-prompt \
      $FILE
    HTML_FILE="${FILE%.*}.html"
    OUTPUT+="${HTML_FILE} "
  fi
done
echo $OUTPUT
echo "::set-output name=converted_notebooks::${OUTPUT}"