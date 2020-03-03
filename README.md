# Pipeline tools

> Common tools for most of our CI/CD pipelines.

## Tools

### require-commands

> Asserts that a command list exists in the available $PATH directories.

#### Synopsis

```
require-commands [COMMAND]...
```

#### Exit status

- 0, if OK,
- 1, if a command do not exists.

#### Examples

```
$ require-commands ls
Return code: 0 (success)
```

```
$ require-commands ls not-found-command

Return code: 1 (failure) + output to stderr
```

### require-envs

> Asserts that an environment variable list is set.

#### Synopsis

```
require-envs [ENV]...
```

#### Exit status

- 0, if OK,
- 1, if an env isn't set.

#### Examples

```
$ require-envs PATH
Return code: 0 (success)
```

```
$ require-envs ls PATH UNAVAILABLE

Return code: 1 (failure) + outup to stderr
```
