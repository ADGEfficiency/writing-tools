---
id: draft-review
aliases: []
tags: []
description: Review & critique writing (blog post etc) and propose improvements.
name: draft-review
---

Review a draft in two passes: a mechanical pass that grep and aspell can do reliably, then a judgement pass on everything they can't see.

## Procedure

1. If given a file path, run the mechanical pass first:

```bash
.claude/skills/draft-review/check-draft.sh path/to/draft.md
```

2. Filter the pattern hits. They are candidates, not verdicts — `well`, `though`, `really` and `part of the` are often load-bearing. Group surviving hits by phrase with their line numbers. Never report a phrase you would not actually cut.
3. Handle spelling separately. Correct proper nouns go into `aspell-personal.txt`, not into the review.
4. Read the full draft and critique what the tools cannot reach:
   - structure and order of argument
   - buried lede — is the best sentence in paragraph six?
   - unearned claims, hand-waves, missing evidence
   - weak openings and trailing-off endings
   - passages that explain where they should show

## Output format

A bulleted list of issues ordered by severity, with proposed fixes in Markdown code blocks.

Put the mechanical hits in a short section beneath the judgement calls — they are lower severity by construction.

```markdown
## Issues

- **{issue}** — {one line}

  ```markdown
  {proposed replacement}
  ```

## Mechanical

- `one of the` — L14, L325
- `ways in which` — L329
```

## Files

- `patterns.txt` — weasel words and clumsy phrases, from Oxford Royale and U. Toronto wordiness lists plus habits caught in past drafts. Add to it when a tic recurs.
- `aspell-personal.txt` — known-good proper nouns. Requires the `personal_ws-1.1 en 0` header line.
- `check-draft.sh` — runs both. Needs `aspell` (`brew install aspell`).

This directory is a submodule of `github.com/ADGEfficiency/writing-tools`. Edits here are commits to that repo, not to the notes repo — commit and push inside this directory, then commit the updated gitlink in the parent.
