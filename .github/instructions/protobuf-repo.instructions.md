---
description: "Use when editing this protobuf repository, including Buf configuration, setup shell scripts, and repository docs. Enforces project-safe Bash and Buf workflow conventions."
name: "Protobuf Repo Conventions"
applyTo: "buf*.yaml,*.proto, README.md"
---

# Protobuf Repository Conventions

- Keep changes focused and minimal; do not restructure files unless requested.
- Treat these items as strong defaults (soft preferences), and allow exceptions when needed for correctness.
- Preserve existing Buf module and generation settings unless the task explicitly requires changing them.
- When schema changes are made, call out validation commands in your response:
    - `buf lint`
    - `buf breaking --against '.git#main'`

## Tool policy

- Use Buf for all protobuf schema management, including linting and breaking change detection.
- Use the `buf` CLI for all protobuf-related commands, and avoid direct `protoc` usage.

## Schema policy

- store files in the `proto/` directory, and do not change the module path unless explicitly requested.

## Shell Script Rules

- Use Bash for setup scripts and keep scripts non-interactive when possible.
- Quote variable expansions (`"$HOME"`, `"$PWD"`) to avoid path and whitespace bugs.
- Prefer idempotent setup behavior (safe to run more than once).
- Avoid destructive commands unless explicitly requested.

## Documentation Rules

- Keep command examples copy-paste ready.
- When updating workflows, update README command snippets in the same change.
