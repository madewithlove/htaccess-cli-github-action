# Htaccess CLI GitHub Action

This GitHub Action can be used to check if htaccess files in your repository behave the way you want them to.
It uses the [Htaccess tester](https://htaccess.madewithlove.be/) and [Htaccess cli](https://github.com/madewithlove/htaccess-cli) under the hood.

## Usage

Create your GitHub Workflow configuration in `.github/workflows/ci.yml` or similar.

```yaml
name: CI

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - name: Test if htaccess files in current directory does wanted redirects
      uses: madewithlove/htaccess-cli-github-action@main
      with:
        url: http://localhost
        expected-url: http://localhost/foo
```

You can also run this on multiple urls when using the multiple branch

We assume here that the url-list file is committed in the repository,
you can also add it in the pipeline itself, which you can see in <https://github.com/madewithlove/htaccess-cli-github-action/blob/main/.github/workflows/test-action.yml#L36>

```yaml
name: CI

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - name: Test if htaccess files in current directory does multiple wanted redirects
      uses: madewithlove/htaccess-cli-github-action@multiple
      with:
        url-list: url-list.yml
```


The structure of the url-list file should look like this:

```yaml
http://localhost/foo: http://localhost/test
http://localhost/bar: http://localhost/test
```

Finally, you can supply a working directory for the action to run in. 

```yaml
name: CI

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - name: Test if htaccess files in a working directory is valid
      uses: madewithlove/htaccess-cli-github-actions@main
      with: 
        url: http://localhost/
        expected-url: http://localhost/foo
        working-directory: ./html
