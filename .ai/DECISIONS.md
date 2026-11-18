# Technical Decisions

## Shared Instructions

- `AGENTS.md` is the source of truth.
- Agent-specific files are thin adapters and do not duplicate rules.
- Rationale: reduces instruction drift across coding tools.
- Consequence: agent adapters must remain links or short pointers.

## Portable Skills

- Portable skills use `.agents/skills/<skill-name>/SKILL.md`.
- Rationale: a consistent open convention shared across agent families.
- Consequence: native-only integrations are documented rather than assumed.

## Memory

- Project memory is Markdown under `.ai/`.
- Rationale: low dependency, easy review, and usable by any agent.
- Consequence: agents must update memory carefully and avoid stale status.
