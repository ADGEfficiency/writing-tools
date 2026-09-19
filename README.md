# Writing Tools

Things I use to write better — a pattern list for removing excess language, built from my own bad habits and lists from others.

This repo is also a Claude Code skill. Vendored into my notes as a submodule at `.agents/skills/draft-review`, where `SKILL.md` turns it into `/draft-review`.

## Use

```shell
$ ./check-draft.sh path/to/draft.md
```

Two passes in one command — weasel-word patterns, then spelling:

```
== patterns ==
14:one of the
44:note how
325:one of the
329:ways in which
335:all of the

== spelling ==
recieve
seperate
```

Pattern hits are candidates, not verdicts. `well`, `though` and `really` are often load-bearing.

## Files

- `patterns.txt` — the phrase list, one per line. `#` and blank lines are ignored. No regex: word boundaries come from `grep -w`, so `very` does not match inside "every". Add to it when a tic recurs.
- `aspell-personal.txt` — known-good proper nouns, so spell output isn't drowned in them. The `personal_ws-1.1 en 0` header is required by aspell.
- `check-draft.sh` — runs both. Locates its own data files, so it works from any directory.
- `SKILL.md` — instructions for Claude Code: run the mechanical pass, then critique what grep can't see.

## Requires

```shell
$ brew install aspell
```

Any grep works — BSD, GNU, or ugrep.

## Sources

Beyond my own habits:

- [Oxford Royale — clumsy phrases to avoid](https://www.oxford-royale.co.uk/articles/clumsy-phrases-avoid.html)
- [University of Toronto — wordiness](https://advice.writing.utoronto.ca/wp-content/uploads/sites/2/wordiness.pdf)
