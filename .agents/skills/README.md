# Skill Registry

Skills are discovered on demand from `.agents/skills/<skill-name>/SKILL.md`. Load only skills relevant to the current task.

## Installed Skills

| Skill | Entry point | Activate for |
|---|---|---|
| Interface Polish | `make-interfaces-feel-better/SKILL.md` | Typography, spacing, hierarchy, icons, hover states, micro-interactions, optical alignment |
| GSAP Core | `gsap-core/SKILL.md` | Core GSAP tweens and fundamentals |
| GSAP Timeline | `gsap-timeline/SKILL.md` | Sequencing and timeline control |
| GSAP ScrollTrigger | `gsap-scrolltrigger/SKILL.md` | Scroll-linked behavior and cleanup |
| GSAP Plugins | `gsap-plugins/SKILL.md` | GSAP plugins |
| GSAP Utils | `gsap-utils/SKILL.md` | GSAP utility functions |
| GSAP React | `gsap-react/SKILL.md` | React lifecycle and GSAP integration |
| GSAP Performance | `gsap-performance/SKILL.md` | Animation performance |
| GSAP Frameworks | `gsap-frameworks/SKILL.md` | Vue, Svelte, and other framework integration |
| Transitions | `transitions-dev/SKILL.md` | Page and component transition patterns |
| Transitions UI Generation | `transitions-ui-generation/SKILL.md` | Structured reveal and UI-generation motion |
| Impeccable | `impeccable/SKILL.md` | Design critique, audit, polish, hardening, and visual improvement |
| Design Taste | `design-taste-frontend/SKILL.md` | Art direction, typography, layouts, density, and avoiding generic output |
| UI UX Pro Max | `ui-ux-pro-max/SKILL.md` | Design-system generation, UI patterns, palettes, and framework guidance |

## Planned Categories

Create a skill only when a project needs useful specialist knowledge:

- Frontend development
- Backend development
- API design
- Database design
- Authentication and authorization
- Security
- Testing and debugging
- Performance
- Accessibility
- DevOps and deployment
- Documentation
- System design

## Adding a Skill

1. Identify the specialist need.
2. Prefer the open `.agents/skills/<name>/SKILL.md` convention.
3. Inspect source, scripts, dependencies, permissions, and license.
4. Record source and commit in `EXTERNAL_SKILL_VERSIONS.txt`.
5. Preserve original third-party instructions.
6. Add project integration guidance separately if necessary.
7. Add it to this registry and run `scripts/validate.ps1`.
