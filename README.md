# Writing Tools

Things I use to write better - currently just a tool I use to remove excess language - based on my own bad habits & lists from others.

## Run All Checks
```shell
$ chmod +x ./check-writing.sh
$ ./check.sh path/to/file

```

## Find Bad Patterns

```bash
$ chmod u+x find_patterns
$ ./patterns.sh path/to/file
```

Will show line number & bad pattern:

```
14:One of the
44:Note how
325:One of the
is that it
329:ways in which
335:all of the
```

## Spell Check

Counts spelling mistakes:

```bash
$ chmod u+x find_patterns
$ ./spell.sh path/to/file
```
