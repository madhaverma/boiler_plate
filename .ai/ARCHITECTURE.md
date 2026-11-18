# Architecture

## Components

- `AGENTS.md`: shared repository instructions.
- Agent adapters: tool-specific entry points.
- `.agents/skills/`: portable specialist knowledge.
- `.ai/`: persistent project context and handoff state.
- `scripts/validate.ps1`: dependency-free structural validation.
- `vendor/licenses/`: external skill license copies.

## Data Flow

An agent reads the shared instructions and relevant memory, discovers only matching skills, updates source files and memory, then runs verification. External skill sources remain separate vendor material and are identified by commit in version metadata.
