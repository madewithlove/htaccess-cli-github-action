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
    - name: phpspec
      uses: madewithlove/htaccess-cli-github-action@master
      with:
        args: http://localhost --expected-url http://localhost/foo
```
