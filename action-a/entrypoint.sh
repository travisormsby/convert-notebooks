#!/bin/bash

OUTPUT_CHANGED_HTML=""
for FILE in $INPUT_CHANGED_FILES; do
  if [[ $FILE == *.ipynb ]]; then
    jupyter nbconvert --template=collapsible_headings --to html_ch --no-prompt $FILE
    CHANGED_HTML="${FILE%.*}.html"
    OUTPUT_CHANGED_HTML+="${CHANGED_HTML} "
  fi
done

# echo "::set-output name=CHANGED_HTML::${OUTPUT_CHANGED_HTML}"