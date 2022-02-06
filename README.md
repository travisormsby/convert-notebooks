# convert-notebooks

Converts Jupyter Notebook files to static html

## Input

- This action requires a single input: files_to_convert
- This input should be a string of space-delimited file names

## Action

- Any Jupyter Notebook files (.ipynb) in files_to_convert are converted to static html using nbconvert's collapsible headings template
- The output html is written to the docs directory, which is created if it does not exist already
- This action does not check out any repo, nor add and commit any files back to a repo. See the workflow file for examples on how to use other actions to perform these steps.

## Output

- The action defines a single output: converted_notebooks
- This output is a string of space-delimited file paths of the converted html files, relative to the repo root

## Limitations
- Will fail if any input file names have spaces
- Will fail if the notebooks are not in the repo root
