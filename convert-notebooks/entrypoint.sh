#!/bin/bash

OUTPUT=""
for FILE in $INPUT_files_to_convert; do
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

echo "::set-output name=converted_notebooks::${OUTPUT}"