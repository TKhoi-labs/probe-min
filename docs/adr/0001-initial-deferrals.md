# 1. Initial deferrals and declines

## Status

Proposed

## Context

Modules that were not enabled when this repository was generated must be resolved here as
either **deferred** (with the trigger that will revisit them) or **declined** (with the
reason). A module that is off and unrecorded is not a decision; it is an omission.

`just health` reads this file. Any row still marked `TODO` is reported as unrecorded, and
`just health` exits non-zero until it is resolved.

## Decision

| Module | Condition | Deferred (with trigger) or declined (with reason) |
| :--- | :--- | :--- |
| `docs` | architecture exists | TODO: deferred (trigger: ...) or declined (reason: ...) |
| `contributing` | accepts outside contributions | TODO: deferred (trigger: ...) or declined (reason: ...) |
| `env` | reproducible local tooling | TODO: deferred (trigger: ...) or declined (reason: ...) |
| `security` | public / external users | TODO: deferred (trigger: ...) or declined (reason: ...) |
| `release` | publishes a versioned artifact | TODO: deferred (trigger: ...) or declined (reason: ...) |
| `ops` | deployed / running | TODO: deferred (trigger: ...) or declined (reason: ...) |


Resolve each row using one of these exact forms, so `just health` can classify it. Both
keywords are lowercase, and the value after them is required:

```text
| `<module>` | <condition> | deferred — trigger: <what has to happen first> |
| `<module>` | <condition> | declined — reason: <why this is not wanted> |
```

A row that says `deferred` without naming a trigger is an intention, not a decision, and
`just health` reports it as unrecorded.

## Consequences

Until every `TODO` above is resolved, the health surface cannot distinguish a module that was
deliberately left out from one that was forgotten.
