#!/bin/sh -l


for NOTEBOOK in $INPUT_NOTEBOOKS
do
  echo Hello world my name is $NOTEBOOK
done

echo $GITHUB_WORKSPACE
WPATH=$(ls -la $GITHUB_WORKSPACE)
echo $WPATH