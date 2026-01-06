# life.nvim — Personal Operating System for Neovim

**life.nvim** is a small, opinionated Neovim plugin designed to help you:

- Build a personal knowledge base  
- Journal daily experiences and learnings  
- Track tasks with clear priorities  
- Run weekly, monthly, and yearly reviews  
- Get gently nudged via Org Agenda  

It is built for **long-term personal growth**, not short-term productivity hacks.

---

## Philosophy

This plugin separates your life system into four layers:

1. **Capture** — get thoughts out of your head quickly  
2. **Reflect** — turn experience into insight  
3. **Think** — build a connected knowledge base  
4. **Execute** — do the right things at the right time  

Neovim becomes your everyday helper throughout life.

---

## Requirements

- Neovim `0.10+`
- `nvim-orgmode/orgmode`
- `chipsenkbeil/org-roam.nvim`
- A notes directory (default: `~/.notes`)

---

## Directory Structure (Default)

```text
~/.notes/
├── roam/                 # Knowledge base (org-roam)
│   ├── concepts/
│   ├── people/
│   ├── ideas/
│   ├── principles/
│
├── journal/              # Daily journals
│   ├── 2026-01-06.org
│
├── tasks/                # Task system
│   ├── inbox.org
│   ├── active.org
│
├── reviews/
│   ├── weekly/
│   ├── monthly/
│   └── yearly/
```

all paths are configurable.
---

## Keybindings (Minimal & Memorable)

All paths are configurable.

By default, all bindings are under:

`<Leader>l` → **life**

### Core Actions

| Key         | Action                          |
|-------------|----------------------------------|
| `<Leader>la` | Open Org Agenda                 |
| `<Leader>lj` | Open today’s journal            |
| `<Leader>ln` | Find or create a knowledge note |
| `<Leader>li` | Capture a quick idea / learning |
| `<Leader>lt` | Open task inbox                 |
| `<Leader>lr` | Weekly review                   |
| `<Leader>lm` | Monthly review                  |
| `<Leader>ly` | Yearly review                   |

You only need to remember `<Leader>l`.

---

## Daily Workflow

### Morning (2–5 minutes)

1. Open agenda  
   `<Leader>la`
2. Open today’s journal  
   `<Leader>lj`
3. Write a few bullets — no pressure.

### During the Day

- Capture tasks quickly:  
  `<Leader>lt`
- Capture ideas or learnings:  
  `<Leader>li`
- Create or link knowledge:  
  `<Leader>ln`

**Capture first. Organize later.**

---

## Journaling

Daily journals are lightweight and forgiving.

Each journal contains:

- Energy check  
- Events  
- Learnings  
- Thoughts  
- Gratitude  

You can write one line or many — **consistency matters more than volume**.

---

## Knowledge Base (Life Wiki)

The knowledge base is powered by **org-roam**.

Use it for:

- Concepts (technical or life-related)
- Principles and mental models
- Decisions you’ve made
- People you interact with

Notes are linked together and grow more valuable over time.

---

## Task System (A / B / C / D)

Tasks are structured using the **Eisenhower Matrix**:

- **A** — Important & Urgent  
- **B** — Important, Not Urgent  
- **C** — Urgent, Not Important  
- **D** — Not Important, Not Urgent  

Tasks live in lists.

Only tasks with deadlines or schedules appear in the agenda.  
This keeps pressure **intentional**, not overwhelming.

---

## Reviews (The Most Important Part)

### Weekly Review

`<Leader>lr`

**Purpose:**
- Adjust direction
- Review tasks
- Extract learnings

### Monthly Review

`<Leader>lm`

**Purpose:**
- Steer your trajectory
- Decide what to double down on
- Identify noise

### Yearly Review

`<Leader>ly`

**Purpose:**
- Redefine direction
- Reflect on growth
- Set vision for the next year

> Reviews are where growth compounds.

---

## Org Agenda (Gentle Nudging)

Org Agenda acts as a gentle executive assistant:

- Shows deadlines
- Highlights overdue tasks
- Reminds you of reviews

It nudges you by **visibility**, not notifications.

---

## Configuration

Example setup:

```lua
require("life").setup({
  leader = "<Leader>l",

  notes_dir = "~/.notes",
  roam_dir = "~/.notes/roam",
  journal_dir = "~/.notes/journal",
  tasks_dir = "~/.notes/tasks",
  reviews_dir = "~/.notes/reviews",

  enable_agenda_on_start = true,
})
```
only the essential options are configurable.

---

## What This Plugin Is NOT

- Not a productivity dashboard  
- Not a time tracker  
- Not a replacement for team tools (ClickUp, Jira, etc.)

It’s a **thinking and reflection system**, not a reporting system.

---

## Future Extensions (Planned)

- ClickUp integration (A/B tasks only)
- People follow-up reminders
- Principles & beliefs tracking
- Light retrospectives & summaries

The architecture is intentionally designed to grow.

---

## Final Note

This plugin is meant to be used **daily, lightly, and consistently**.

If you:

- Journal a little  
- Review regularly  
- Capture ideas without friction  

…your knowledge and clarity will compound over years.

**That’s the goal.**

