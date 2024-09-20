# Test Science Document Library

Is is the source code for the test science research document library. It contains all of Test Science's public works, and instructions for building the library.

There are two git forges that track the Test Science Document Library.
- IDA Internal Bitbucket: https://code.ida.org/projects/TSDL/repos/websource/browse
- Public Github. The public github is needed to build previews of the website on Netlify.

## To Do

- Remove any pubs that we don't have rights to distribute
- Link to Relevant Test Science apps

## Requirements

- Hugo
- R and blogdown
- Git
- Zotero is not necessary, but it is a convenient way to generate bib entries

## Work Flow

#### Adding a new project to the Test Science Document Library

Data for the site is stored in `test-science-document-library.xlsx`. Each row is a unique test science *project* (and a project can have multiple products: papers, slide decks, posters, etc.). Each row determine a project in the test science documents library.

To update the website, add a new row to the spreadsheet.

Running the `create-library.R` file creates the structure of the content directory and fills the data into each markdown file. Blogdown is needed to make the folder structure and slugs but you don't have to use blogdown otherwise to serve or build the website.

Move the paper and slide to the newly generated folder

#### Testing the Website

run `hugo server` in the folder will build and preview the website, then go to http://localhost:1313/ to see a local preview of the Test Science Documents Library.

#### Publishing an update
