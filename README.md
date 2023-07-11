A handy [pre-commit](http://pre-commit.com/) hook which will run Checkstyle's
code style formatter for you on your code!

Please ensure that a `checkstyle.xml` file is in the root of your project.

Usage:

```
repos:
- repo: https://github.com/0x08/checkstyle-precommit-hook
  rev: b09cd9baf3950c92574efb17f4a14c1f43a28d3f
  hooks:
    - id: checkstyle-java
```

*Note*: this file stores Checkstyles's jar in a `.cache/` directory so that it
doesn't need to be re-downloaded each time.  You will probably want to add
`.cache/` to the `.gitignore` file of the project which uses this hook.
