# External Skill Management

Third-party skills are untrusted until reviewed.

## Required Review

Before installation or update:

1. Inspect `SKILL.md` and supporting instructions.
2. Review scripts and executable files.
3. Check the license and redistribution terms.
4. Identify network access, credentials, and required permissions.
5. Review external dependencies and runtime requirements.
6. Do not execute unexplained scripts.
7. Record the source, commit, license, and update command.

## Integrated Sources

| Capability | Source | License copy |
|---|---|---|
| Interface polish | https://github.com/jakubkrehel/make-interfaces-feel-better | `vendor/licenses/make-interfaces-feel-better-LICENSE` |
| GSAP | https://github.com/greensock/gsap-skills | `vendor/licenses/gsap-skills-LICENSE` |
| Transitions | https://github.com/Jakubantalik/transitions.dev | `vendor/licenses/transitions.dev-LICENSE` |
| Impeccable | https://github.com/pbakaus/impeccable | `vendor/licenses/impeccable-LICENSE` |
| Taste | https://github.com/leonxlnx/taste-skill | `vendor/licenses/taste-skill-LICENSE` |
| UI UX Pro Max | https://github.com/nextlevelbuilder/ui-ux-pro-max-skill | `vendor/licenses/ui-ux-pro-max-skill-LICENSE` |

## Update Workflow

Prefer the source's recommended installer or package update command. Before replacing files, clone or fetch a review copy, inspect changes, verify licenses, and run the repository validator.

- Interface: `npx skills add jakubkrehel/make-interfaces-feel-better`
- GSAP: `npx skills add https://github.com/greensock/gsap-skills`
- Transitions: `npx skills add Jakubantalik/transitions.dev`
- Impeccable: `npx impeccable update`
- Taste: `npx skills add https://github.com/Leonxlnx/taste-skill --skill "design-taste-frontend"`
- UI UX Pro Max: follow the release and installer instructions at https://github.com/nextlevelbuilder/ui-ux-pro-max-skill

Do not run a skill installer or copied executable in an untrusted repository without review.
