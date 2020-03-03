# Pipeline tools

> Common tools for most of our CI/CD pipelines.

## Tools

### require-commands

> Asserts that a command list exists in the available $PATH directories.

#### Synopsis

```
require-commands.sh [COMMAND]...
```

#### Exit status

- 0, if OK,
- 1, if a command do not exists.

#### Examples

```
$ require-commands.sh ls
Return code: 0 (success)
```

```
$ require-commands.sh ls not-found-command

Return code: 1 (failure) + output to stderr
```
