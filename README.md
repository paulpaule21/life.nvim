# life.nvim

life.nvim is a personal life operating system built on top of Neovim.

It is designed to help you **think clearly, reflect regularly, and build a long-term personal knowledge base** — without locking your data into proprietary tools or forcing you into rigid workflows.

This project started from a simple idea:

> What if your editor could help you understand your life over time?

---

## 🌱 Vision

life.nvim aims to become a **long-term companion**, not a productivity gimmick.

The goal is not to optimize every minute of your day, but to:
- create space for reflection
- capture thoughts, relationships, and decisions
- recognize patterns across weeks, months, and years
- slowly build a personal “second brain” that stays fully under your control

Your data belongs to you — stored in plain text, accessible forever, and portable across machines, systems, and decades.

## 🧠 Core Philosophy

### 1. Writing comes first  
You should never think about databases, schemas, or tools while writing.

life.nvim builds on:
- Org mode
- Org-roam
- Journaling
- Plain text files

The editor is the place where thinking happens.

---

### 2. Separation of concerns  
life.nvim is intentionally focused on **input and workflow**:
- journaling
- tasks
- reviews
- navigation
- structure

Analysis, aggregation, and long-term insights are handled by a separate core (planned in Go).

This keeps the editor fast, flexible, and distraction-free.

---

### 3. Reflection over automation  
life.nvim does not try to replace thinking with automation.

Instead, it:
- prepares reviews
- structures information
- highlights patterns
- encourages intentional reflection

The goal is not answers — it is better questions.

---

### 4. Decentralized by design  
There is no central server.
No required cloud.
No vendor lock-in.

You decide:
- where your data lives
- how it is backed up
- how long it is kept

Local disk, personal cloud, external drive — all valid.

## 🧩 What life.nvim is

- A Neovim plugin for journaling, tasks, and reviews
- A structured personal knowledge workflow
- A foundation for long-term self-reflection
- A UX layer on top of Org and Org-roam

## 🚫 What life.nvim is not

- Not a SaaS product
- Not a habit tracker with scores
- Not a productivity dashboard
- Not a replacement for thinking

life.nvim intentionally stays simple at the surface — complexity lives behind the scenes.

## 🔮 Long-Term Direction

Over time, life.nvim will be extended by an optional analysis core that can:
- aggregate journals, tasks, and reviews
- correlate data across time
- integrate health and sleep metrics
- support weekly, monthly, yearly, and long-term reviews
- help identify trends in energy, focus, relationships, and well-being

This will remain **optional and modular**.

life.nvim will always work without it.

## ❤️ Why this exists

This project exists because:
- modern tools optimize output, not understanding
- personal data is increasingly locked away
- long-term reflection is treated as an afterthought

life.nvim is an attempt to build something slower, calmer, and more human.

A tool you can grow with — for years, not weeks.---

## ✨ Why this is different

Most personal productivity and knowledge tools focus on **output**:
tasks completed, habits streaked, dashboards filled.

life.nvim focuses on **understanding**.

### 🧘 No optimization pressure  
life.nvim does not try to turn your life into a KPI.

There are no streaks, scores, or gamified incentives.
No pressure to “perform” reflection.

Instead, the tool encourages:
- slow thinking
- honest writing
- intentional reviews

Progress is measured over months and years — not days.

### 📁 Plain text, long-term by default  
Your data is stored as **plain text files**.

This means:
- readable without the plugin
- editable with any editor
- archivable for decades
- resilient to tool changes

life.nvim is built for **longevity**, not trends.

### 🧩 Modular instead of monolithic  
life.nvim does not try to do everything.

- The editor handles writing and structure
- Analysis and insights live outside the editor
- External data (health, sleep, metrics) is optional

You can use life.nvim:
- alone
- partially
- or as part of a larger system

Nothing is required except writing.

### 🧠 Reflection, not automation  
life.nvim does not aim to automate thinking.

It prepares the ground:
- structured journals
- consistent reviews
- contextual linking

But the interpretation stays human.

The tool supports reflection — it does not replace it.

### 🔓 No lock-in, no platform dependency  
There is:
- no central server
- no mandatory cloud
- no proprietary format

You decide where your data lives and how it evolves.

life.nvim works offline, locally, and independently.

### 🕰 Built for the long term  
life.nvim is designed for people who think in **years**, not weeks.

It assumes:
- life changes
- priorities shift
- tools come and go

Your notes, reflections, and reviews should outlive all of that.

life.nvim is not a productivity app.

It is a **personal archive of thought and growth**.

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

