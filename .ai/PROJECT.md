# Project

## Overview

A reusable, framework-independent foundation for AI-assisted software development.

## Problem

Starting future projects should not require re-creating agent instructions, project memory, collaboration rules, or specialist skill discovery.

## Target Users

- Software developers using AI coding agents.
- Teams working across multiple agent tools.
- Projects that need persistent context and consistent development rules.

## Main Requirements

- Shared source of truth for agent instructions.
- Thin adapters for tools that do not consume `AGENTS.md` directly.
- Persistent file-based project memory.
- Portable, relevant-only Agent Skills.
- Stack-neutral initialization and architecture.
- Safe management of third-party skills.

## Technology Stack

No application stack is selected. The initial foundation uses Markdown, PowerShell, and existing agent conventions only.

## Scope

- Included: instructions, memory, skill registry, external skill integration, and validation.
- Excluded: business application code, framework choice, example domain models, APIs, or pages.
