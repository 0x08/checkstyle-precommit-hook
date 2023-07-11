A handy [pre-commit](http://pre-commit.com/) hook which will run Checkstyle's
code style formatter for you on your code!

Usage:

```
repos:
- repo: https://github.com/0x08/checkstyle-precommit-hook
  rev: 3c5665e934e29dd36f49916407bd606cd24767e2
  hooks:
    - id: checkstyle-java
```

*Note*: this file stores Checkstyles's jar in a `.cache/` directory so that it
doesn't need to be re-downloaded each time.  You will probably want to add
`.cache/` to the `.gitignore` file of the project which uses this hook.
