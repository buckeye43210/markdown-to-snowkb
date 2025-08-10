```markdown
---
title: "Documentation: A Team Sport"
subtitle: "Collaborative Environment for Document Publication"
author: "Rick Holbert"
date: "August 10, 2025"
theme: "PaloAlto"
colortheme: "whale"
fonttheme: "professionalfonts"
header-includes:
  - \usepackage{hyperref}
---

# Overview

- Backbone of Projects
- Knowledge Sharing
- Pitfalls of Poor Docs
- Bus Factor Risks
- Trained for Paper (Issue)
- Collaboration Benefits
- User Experience Boost
- Best Practices
- Life Cycle
- Team Sport Mindset
- Workflow Tools
- Markdown Authoring
- Mermaid Diagrams
- VS Code Editing
- Pandoc Conversion
- CSS Styling
- GitHub Collaboration
- Makefile Automation
- SNOW KB Publishing
- Next Steps
- Summary
- Key Takeaways

---

# Documentation: Backbone of Success

- Clarity: Aligns team on goals, processes, tech details.
- Scalability: Guides new contributors as projects grow.
- Decisions: Tracks "why" to avoid repeated errors.
- Risks: Ensures compliance in regulated fields.

**Tech Example**: API docs enable seamless integration, cut debug time.

---

# Knowledge Sharing & Onboarding

- Democratizes info: Reduces expert dependency.
- Speeds onboarding: Quick grasp of workflows/tools.
- Aids maintenance: Simplifies troubleshooting.
- Future-proofs: Preserves knowledge amid changes.

**Tech Example**: README with setup scripts onboards engineers fast.

---

# Pitfalls of Poor Documentation

- Confusion: Leads to errors, miscommunication.
- Inefficiency: Time wasted reverse-engineering.
- Knowledge loss: Gaps when experts leave (bus factor).
- Costs: Builds technical debt, rework.

**Tech Example**: Undocumented code wastes hours on logic decoding.

---

# Bus Factor Defined

- Measure: Key individuals whose absence stalls project.
- Low (1-2): High risk, concentrated knowledge.
- High (5+): Resilient, distributed info.
- Link to Docs: Poor docs lower factor; good docs raise it.

**Mitigation**:
- Document processes/code/decisions.
- Cross-train teams.
- Use wikis/Git repos.
- Pair programming/reviews.

**Tech Example**: Solo architect knowledge → Factor 1; Documented + shared → Higher resilience.

---

# We've Been Trained for Paper

**Credit**: Ben Balter (2012)  
**Source**: [https://ben.balter.com/2012/10/19/we-ve-been-trained-to-make-paper/](https://ben.balter.com/2012/10/19/we-ve-been-trained-to-make-paper/)

- Trained for print, not web/digital.
- Tools (e.g., Word): 1980s print focus (margins, breaks); weak on hyperlinks, responsiveness.
- Digital dominance: Most docs consumed online.

---

# Flawed Workflow in Paper Tools

Legacy process:
1. Draft in Word.
2. Share email/folder.
3. Reconcile manually.
4. Repeat to finalize.
5. Convert web format.
6. Publish.

**Issue**: Print-first; web retrofit.

```mermaid
graph TD
    A[Draft in Word] --> B[Share email/folder]
    B --> C[Reconcile changes]
    C -->|Repeat| C
    C --> D[Convert web]
    D --> E[Publish]

    classDef draft fill:#f9e79f,stroke:#333,stroke-width:2px;
    classDef share fill:#a9dfbf,stroke:#333,stroke-width:2px;
    classDef reconcile fill:#f5b7b1,stroke:#333,stroke-width:2px;
    classDef convert fill:#a3e4d7,stroke:#333,stroke-width:2px;
    classDef publish fill:#d2b4de,stroke:#333,stroke-width:2px;

    class A draft;
    class B share;
    class C reconcile;
    class D convert;
    class E publish;
```

---

# Why Print Tools Fail Technically

- Word: Physical focus; ignores web (responsiveness, readability).
- Proprietary (.docx): Mixes content/formatting; software-locked.
- Analogy: Water from filtered Coke – inefficient.

**Challenges**:
- File chaos: `doc_2012_final2.docx`.
- No history: Unclear edits, no simultaneous work, no branches.

---

# Solution: Version Control & Web-First

- Git: 1970s origin; tracks changes (character-level), branches, discussions.
- Free, dev-standard.

Web-first flow:
1. Markdown: Text-based content.
2. Git/GitHub: Collab, control.
3. Tools: VS Code (edit), Git CLI.
4. Repo: Create, collaborate.

```mermaid
graph TD
    A[Markdown content] --> B[Git/GitHub collab]
    B --> C[VS Code/Git CLI tools]
    C --> D[Repo create/collaborate]

    classDef markdown fill:#f9e79f,stroke:#333,stroke-width:2px;
    classDef git fill:#a9dfbf,stroke:#333,stroke-width:2px;
    classDef tools fill:#f5b7b1,stroke:#333,stroke-width:2px;
    classDef repo fill:#a3e4d7,stroke:#333,stroke-width:2px;

    class A markdown;
    class B git;
    class C tools;
    class D repo;
```

- Shift: Web-first; pure content with Markdown.
- Break proprietary traps; focus essence.

**Credit**: Ben Balter (2012).

---

# Collaboration Benefits

- Accuracy: Multi-perspectives catch gaps.
- Relevance: Tailors for devs/users.
- Improvement: Git/wikis for updates.
- Ownership: Shared maintenance.

**Tech Example**: Cross-team wiki ensures comprehensive docs.

---

# User Experience Enhancement

- Empowers: Self-service guides cut support.
- Trust: Pro docs reflect quality.
- Reduces errors: Intuitive instructions.
- Adoption: Easy learning boosts uptake.

**Tech Example**: Tool manual slashes tickets.

---

# Best Practices

- Concise: Simple language, visuals.
- Organized: Logical structure, searchable.
- Updates: Living docs, owners assigned.
- Templates: Standardize (README, SOPs, APIs).
- Test: Validate with users.

---

# Documentation Life Cycle

```mermaid
graph TD
    A[Plan: Requirements/specs] --> B[Code: Code/APIs]
    B --> C[Build: Processes]
    C --> D[Test: Cases/results]
    D --> E[Release: Notes]
    E --> F[Deploy: Steps]
    F --> G[Operate: Runbooks]
    G --> H[Monitor: Metrics/incidents]
    H --> A

    classDef plan fill:#FFD700,stroke:#333,stroke-width:2px;
    classDef code fill:#1E90FF,stroke:#333,stroke-width:2px;
    classDef build fill:#32CD32,stroke:#333,stroke-width:2px;
    classDef test fill:#FF4500,stroke:#333,stroke-width:2px;
    classDef release fill:#9932CC,stroke:#333,stroke-width:2px;
    classDef deploy fill:#00CED1,stroke:#333,stroke-width:2px;
    classDef operate fill:#FF69B4,stroke:#333,stroke-width:2px;
    classDef monitor fill:#FFA500,stroke:#333,stroke-width:2px;

    class A plan;
    class B code;
    class C build;
    class D test;
    class E release;
    class F deploy;
    class G operate;
    class H monitor;
```

---

# Team Sport Mindset

- All contribute: Devs, writers, users.
- Tools: Streamline collab.
- Versioning/Automation: Efficiency.
- Goal: Living, maintainable docs.

---

# Workflow Overview

- Input: SMEs, feedback.
- Tools: VS Code, Markdown, Mermaid, Pandoc, GitHub.
- Steps: Write, preview, collab, convert, publish.
- Focus: Simplicity, integration, CI/CD.

---

# Markdown: Core Authoring

- Lightweight markup: Structure text.
- WYSIWYM: Meaning-focused.
- Benefits: Readable, durable, AI-integrated, GitHub-rendered.
- History: Outlasts word processors.

```mermaid
graph TD
    A[Markup Formats] --> B[Long-Term Readability]
    C[LLM Generate] --> D[AI Editing]
    E[GitHub Render] --> F[Collab Review]
    B --> G[Modern Use]
    D --> G
    F --> G
    G --> H[Pandoc/Mermaid/CI/CD]
    H --> I[Publish Often]

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style E fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style F fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style G fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style H fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style I fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
```

---

# Mermaid: Diagram Language

- Text-based: Simple syntax.
- Like Markdown: Portable, editor-agnostic.
- Embed in MD: Renders to graphics/SVG (clickable).
- Supported: GitHub, Pandoc, VS Code.

Types: Sequence, Gantt, Flowchart, Class, State, ER, Journey, Mindmap, Timeline, Requirement, Git Graph, Pie, Quadrant, Sankey, Block, C4.

```mermaid
mindmap
  root((Mermaid))
    (Diagram Language)
      Simple syntax
      Many types
    (Like Markdown)
      Portable
      Agnostic
      Any editor
      Future-proof
    (Embed in MD)
      Render graphics
      SVG links
    (Adopted)
      Lucid
      GitHub
      Pandoc
      VS Code
```

---

# Step 1: VS Code Content Creation

```mermaid
graph LR
    A[Write Markdown] --> B[Add Mermaid]
    B --> C[Preview in VS Code]
    C --> D[Commit Changes]
    D -->|Repeat| A

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
```

- Extensions: Markdown Preview Mermaid.
- Add diagrams/workflows.
- Paste screenshots/links.
- Real-time preview.

---

# Step 2: Pandoc Conversion

```mermaid
graph TD
    A[MD + Mermaid] --> B[Pandoc + Filter]
    B --> C[HTML]
    B --> D[PDF]
    B --> E[EPUB]
    B --> F[LaTeX]
    B --> G[DOCX]
    B --> H[PPT]

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style E fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style F fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style G fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style H fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
```

- Renders to formats.
- YAML metadata.
- Command: `pandoc -F mermaid-filter in.md -o out.html`.

---

# Step 3: CSS Styling

- From Word: Save as HTML, extract CSS.
- Tool: `pip install html2css; html2css -i html -o css`.
- Apply: `--css=style.css`.
- Controls: Fonts, colors, headings.

Command: `pandoc -F mermaid-filter --css=style.css in.md -o out.html`.

---

# Step 4: GitHub Collaboration

```mermaid
graph LR
    A[Edit Markdown] --> B[Push Branch]
    B --> C[Pull Request]
    C --> D[Review]
    D --> E{Approved?}
    E -->|Yes| F[Merge Main]
    E -->|No| A
    F --> G[Publish]

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style E fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style F fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style G fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
```

- Repo host: Track changes.
- PRs: Reviews/edits.
- Native rendering.

---

# Step 5: Makefile Automation

- Tasks: html, push, all.
- Example:

```makefile
.PHONY: all html push

all: html push

html: 
	pandoc -F mermaid-filter -s --css=styles.css in.md -o in.html

push:
	git commit -am "Update docs" && git push
```

- Run: `make all`.

---

# Step 6: SNOW KB Publishing

- Manual: Paste HTML, update, preview, upload images, submit.
- Auto: Jenkins CI/CD – Checkout, build (make html), POST to API.
- Secrets: Jenkins Credentials.
- Alt: Makefile/curl with KeePass; GitHub Actions (YAML workflow, API POST).

```mermaid
sequenceDiagram
    Jenkins->>Creds: Fetch
    Creds-->>Jenkins: Return
    Jenkins->>Jenkins: make html
    Jenkins->>SNOW API: POST JSON
    SNOW API-->>Jenkins: Confirm
```

---

# Next Steps

- PoC: Jenkins auto-publish.
- Enable GitHub Actions for CI/CD.
- Expand AI: Drafts, taxonomy.
- Improve CSS.
- Indexing: Decision trees, FreePlane mind maps; categorize topics/projects.

---

# Summary

```mermaid
graph TD
    A[Collab Docs] --> B[Longevity]
    A --> C[Workflows]
    A --> D[Clarity]
    B --> E[Team Mentality]
    C --> E
    D --> E
    E --> F[Project Success]

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style D fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style E fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style F fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
```

---

# Key Takeaways

- Strategic asset: Sharing, onboarding, maintenance.
- Avoid pitfalls: Confusion, costs.
- Collab: Accuracy, UX boost.
- Mindset: Team sport.
- Tools: Markdown, Mermaid, Git, Pandoc, Automation.

**Action**: Invest early in collab docs – save time, empower teams.
```