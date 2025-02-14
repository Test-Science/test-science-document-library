# Test Science Research Document Library

This repo contains the source code for the test science research document library. It contains (hopefully) all of Test Science's public works, and instructions for building the library, which is a hugo website.

Preview: https://test-science-document-library.netlify.app/

There are two git forges that track the Test Science Document Library.
- IDA Internal Bitbucket: https://code.ida.org/projects/TSDL/repos/websource/browse
- Public Github. The public github is needed to build previews of the website on Netlify. https://github.com/Test-Science/test-science-document-library

## Requirements

- Hugo (see [here](https://gohugo.io/installation/windows/) for Windows users)
- R and blogdown package
- Git

## Work Flow

#### Adding a new project to the Test Science Document Library

To update the website, add a new row to the spreadsheet, and then

1. Run the `create-project.R`
1. Run the `create-library.R`
1. Move the paper and slide to the newly generated folder
1. Run `hugo`

#### Testing the Website

Running `hugo server` in the folder will build and preview the website.

Then go to http://localhost:1313/ to see a local preview of the Test Science Documents Library.

#### Publishing an update to Netlify

Merge a change into the github repository, and the Netlify app will automatically rebuild the site and deploy it.

## To Do

- Incorporate Miriam's layout suggestion
- Link to Relevant Test Science apps
- PDF -> Markdown conversion
