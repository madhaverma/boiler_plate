# Multi-Agent AI Coding Boilerplate

A framework-independent starting point for AI-assisted software projects. It provides shared instructions, persistent project memory, portable Agent Skills, thin agent adapters, and a minimal project initialization workflow.

This repository does not choose a product stack or include an example application.

## Supported Agents

| Agent | Repository mechanism | Status |
|---|---|---|
| OpenAI Codex | `AGENTS.md`; `.agents/skills/` | Portable |
| Claude Code | `CLAUDE.md`; project skill discovery | Adapter |
| GitHub Copilot | `.github/copilot-instructions.md` | Adapter |
| Gemini CLI | `GEMINI.md`; `.agents/skills/` | Adapter |
| Cursor | `.cursor/rules/`; `.agents/skills/` | Adapter |
| Windsurf | `.windsurf/rules/`; `.agents/skills/` | Adapter |
| OpenCode | `AGENTS.md`; Agent Skills convention | Portable |

Official sources:

- [Codex AGENTS.md](https://developers.openai.com/codex/guides/agents-md/)
- [Codex skills](https://developers.openai.com/codex/skills/)
- [Claude Code memory](https://code.claude.com/docs/en/memory)
- [Claude Agent Skills](https://docs.anthropic.com/en/docs/agents-and-tools/agent-skills/overview)
- [GitHub Copilot instructions](https://docs.github.com/en/copilot/concepts/response-customization)
- [Gemini CLI GEMINI.md](https://geminicli.com/docs/get-started/gemini-md/)
- [OpenCode rules](https://opencode.ai/docs/rules/)
- [OpenCode skills](https://opencode.ai/docs/skills/)
- [Cursor rules](https://cursor.com/docs/context/rules)
- [Windsurf rules](https://docs.windsurf.com/windsurf/cascade/memories)

## Start a New Project

1. Read [AGENTS.md](AGENTS.md).
2. Ask for or inspect the project purpose, users, features, constraints, scale, and deployment needs.
3. Select the stack only after requirements are clear.
4. Fill [.ai/PROJECT.md](.ai/PROJECT.md), [.ai/CURRENT.md](.ai/CURRENT.md), [.ai/ARCHITECTURE.md](.ai/ARCHITECTURE.md), [.ai/TASKS.md](.ai/TASKS.md), and [.ai/HANDOFF.md](.ai/HANDOFF.md).
5. Create only directories and dependencies needed by the selected stack.
6. Use the skill registry to activate relevant specialist skills.
7. Implement in small, verifiable increments.
8. Run the relevant project checks and update project memory.

For frontend work, ask whether the user has a reference website, design, or brand guidelines. Only create `docs/design.md` for an approved frontend direction. See [docs/design-workflow.md](docs/design-workflow.md).

## Memory Workflow

- Read relevant `.ai/` files before work.
- Update memory after meaningful architectural or implementation changes.
- Never invent completed work or store secrets.
- Treat code and configuration as authoritative.

Use these files:

- [.ai/PROJECT.md](.ai/PROJECT.md) — approved project scope and stack
- [.ai/CURRENT.md](.ai/CURRENT.md) — current status and next steps
- [.ai/DECISIONS.md](.ai/DECISIONS.md) — technical decisions
- [.ai/ARCHITECTURE.md](.ai/ARCHITECTURE.md) — components and data flow
- [.ai/TASKS.md](.ai/TASKS.md) — work and milestones
- [.ai/agents/README.md](.ai/agents/README.md) — ownership and collaboration
- [.ai/agents/HANDOFF.md](.ai/agents/HANDOFF.md) — integration handoff

## Skills

Portable skills are stored in `.agents/skills/<skill-name>/SKILL.md`. The registry is [.agents/skills/README.md](.agents/skills/README.md).

List installed entry points:

```powershell
Get-ChildItem .agents\skills -Filter SKILL.md -Recurse
```

## Verification

Run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/validate.ps1
```

## External Skill Updates

Review external skill sources before updating. Source URLs, license copies, and reviewed commits are recorded in [EXTERNAL_SKILL_VERSIONS.txt](EXTERNAL_SKILL_VERSIONS.txt) and [docs/external-skills.md](docs/external-skills.md).

## Repository Structure

```text
AGENTS.md
CLAUDE.md
GEMINI.md
.agents/skills/
.ai/
.github/copilot-instructions.md
.cursor/rules/
.windsurf/rules/
docs/
scripts/
vendor/licenses/
```
