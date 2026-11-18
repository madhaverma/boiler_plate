# Design Reference Workflow

## When to Ask

When starting frontend work, ask whether the user has:

- A reference website.
- Screenshots or design files.
- Existing brand guidelines.
- An approved design system.

Do not ask again if the answer is already present in project requirements.

## Reference Analysis

If a reference is provided:

1. Check whether Context.dev can generate or help maintain a design specification.
2. If Context.dev is unavailable, use an accessible manual analysis workflow.
3. Capture approved findings in `docs/design.md`.
4. Do not copy branding, proprietary assets, or source designs.
5. Keep `docs/design.md` synchronized with approved project direction.

Record:

- Typography.
- Color palette.
- Layout and grid.
- Spacing.
- Components.
- Visual hierarchy.
- Responsive behavior.
- Interaction patterns.
- Animation characteristics.

Do not create `docs/design.md` for backend-only projects or invent specifications.

## Component Discovery

Use 21st.dev as a discovery and reference resource:

https://21st.dev/community/templates

Evaluate fit with the project design system. Reuse or adapt a component only when it is appropriate. Do not require 21st.dev as a runtime dependency or copy an entire template for a small component need.
