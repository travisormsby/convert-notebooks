# convert-notebooks
Converts Jupyter Notebook files to static html

## Input
* This action requires a single input: files_to_convert
* This input should be a string of space-delimited file names
* Any Jupyter Notebook files (.ipynb) are converted to static html using nbconvert's collapsible headings template

## Output
* The action defines a single output: converted_notebooks
* This output is a string of space-delimited file names of the converted html files
* This action does not check out any repo, nor add and commit any files back to a repo. See the workflow file for examples on how to use other actions to perform these steps.
