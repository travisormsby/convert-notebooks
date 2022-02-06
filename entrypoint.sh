#!/bin/bash

echo $INPUT_FILES_TO_CONVERT

mkdir -p docs
OUTPUT=""
for FILE in $INPUT_FILES_TO_CONVERT; do
  if [[ $FILE == *.ipynb ]]; then
    OUTPATH="docs/${FILE%.*}"
    jupyter nbconvert \
      --template=collapsible_headings \
      --to html_ch \
      --no-prompt \
      --output $OUTPATH \
      $FILE
    OUTPUT+="${OUTPATH}.html "
  fi
done
echo $OUTPUT
echo "::set-output name=converted_notebooks::${OUTPUT}"