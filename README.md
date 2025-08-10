---
title: "Documentation: A Team Sport"
subtitle: "A Collaborative Environment For Document Publication"
author: Rick Holbert
date: 13 August 2025
theme: PaloAlto
colortheme: whale
fonttheme: professionalfonts
---

## Why Documentation Matters
- Good documentation; the backbone of successful projects.
- Enables knowledge sharing, onboarding, maintenance.
- Poor documentation results in confusion, inefficiency.
- Collaboration ensures accuracy, relevance.

---

## The Team Sport Mindset
- Everyone contributes: developers, writers, consumers.
- Collaborative tools streamline workflows.
- Version control and automation boost efficiency.
- Goal: Living, maintainable, up-to-date documentation.

---

## Workflow Overview
- **Input**: Subject Matter Experts, feedback loops.
- **Tools**: VS Code, Markdown, Mermaid, Pandoc, GitHub.
- **Steps**: Write, preview, collaborate, convert, publish.
- **Focus**: On simplicity, structure, integration, longevity.

---

## Benefits of Markdown
- **Longevity**: Markup languages are lightweight, durable.
    - Runoff (1960s), Postscript (1982), \LaTeX (1984)
- **LLM Integration**: LLM suggestions, editor plugins.
- **GitHub Rendering**: Native Markdown/Mermaid support.
- **Fewer Distractions**: Focus on pure essense of document.
    - **WYSIWYG** vs **WYSIWYM**
- **Attributes**: Structured, portable, future-proof.
- **History**: Word processors fade; Markup languages endure.

---

## Markdown Benefits Diagram

```mermaid
graph TD
    A(Legacy Formats)          --> B(Long-Term Readability)
    C(LLM: Generate Markdown)  --> D(AI-Enhanced Editing)
    E(GitHub: Render Markdown) --> F(Collaborative Review)
    B --> G(Modern Markdown Use)
    D --> G
    F --> G
    G --> H(Publish Early, Publish Often)
    H --> H
    
    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style E fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style F fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style G fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style H fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
```

---

## Sample Mermaid Diagram Types

- Sequence Diagram - Actor/Object interaction over time.
- Gantt Chart - Represents project schedules and tasks.
- Flowchart - Visualizes processes or workflows.
- Class Diagram - Models class structures and relationships.
- State Diagram - Represents state machines.
- Entity-Relationship Diagram - Database relationships.
- User Journey Diagram - User interactions and experiences.
- Mindmap - Displays hierarchical information.
- Timeline - Shows events in chronological order.
- Requirement Diagram - System requirements.
- Git Graph - Visualizes Git repository commit history.
- Pie Chart - Shows data in a circular, proportional format.
- Quadrant Chart - Compares data in four quadrants.
- Sankey Diagram - Shows flow magnitudes between nodes.
- Block Diagram - System component interactions.
- C4 Diagram - Models software architecture.

---

## Step 1: Create Content in VS Code
```mermaid
graph LR
    A(Write Markdown) --> B(Add Mermaid Diagrams)
    B --> C(Preview in VS Code)
    C --> D(Commit to GitHub)

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
```

- Use VS Code with Markdown Preview Mermaid Support.
- Write Markdown for simplicity.
- Add Mermaid diagrams for workflows, etc.
- Paste screenshots from clipboard.
- Add other bitmap images by reference.
- Preview diagrams and images in real-time.


---

## Step 2: Pandoc Conversion Tool
```mermaid
graph TD
    A(Markdown w/ Mermaid)
    A --> B(Pandoc)
    B --> C(HTML)
    B --> D(PDF)
    B --> E(EPUB)
    B --> F(LATEX)
    B --> G(DOCX)
    B --> H(PPT)
    
    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style E fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style F fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style G fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style H fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF    
```
- Renders Markdown to HTML, PDF, EPUB, etc.
- Uses `mermaid-filter` for diagram rendering.
- Use YAML formatted metadata values in document header.
- Example Command:

```bash
pandoc -F mermaid-filter -t html in.md -o out.html
```

---

## Step 3: Style with CSS
- Create Word document with styles (fonts, colors).
- Convert DOCX to HTML via Save As.
- Extract CSS from HTML style section.

```bash
pip install html2css
html2css --input saved_as.html --output style.css
```
- Apply to HTML: `pandoc --css=style.css`.
- Example: Headings, font sizes, colors.
- Example Command:

```bash
pandoc -F mermaid-filter                         \
       --css=style.css                           \
       --to html                                 \
       --out out.html in.md
```

---

## Step 4: GitHub Collaboration

```mermaid
graph LR
    A(Edit Markdown)
    A --> B(Push to Branch)
    B --> C(Create Pull Request)
    C --> D(Team Review)
    D --> E{Approved?}
    E -->|Yes| F(Merge to Main)
    E -->|No| A
    F --> G(Publish)
    
    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style E fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style F fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style G fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
```

- Host Markdown in GitHub repository.
- Use pull requests for reviews, edits.
- Track changes, maintain history.
- Native Markdown/Mermaid rendering.

---

## Step 5: Automate Conversion with Makefile
- Automates conversions, Git operations.
- Tasks: all, html, push.
- Commands: `make all`, `make html`, `make push`.

```makefile
.PHONY: all html push

all: pdf push

html: 
	pandoc -F mermaid-filter -s --css=styles.css      \
    in.md -o in.html

push:
	git commit -m "Update docs" -a && git push
```

---

## Step 6: Publish to ServiceNow KB
- **Manual**:
    - **Paste** HTML into SNOW KB editor
    - **Uupdate**
    - **Preview**
    - **Upload images**
    - **Submit** for review
- **Automatic**: Jenkins CI/CD Pipeline:
  - **Checkout**: GitHub repo branch
  - **Build**: Run `make html`
  - **Publish**: POST JSON to ServiceNow API
  - **Secrets**: Stored in Jenkins Credentials Plugin.
- **Alternative**: GitHub Actions (`make html` YAML workflow, API POST) -- not currently enabled.

---

## CI/CD Sequence Diagram

```mermaid
sequenceDiagram
    participant J as Jenkins
    participant C as Jenkins Credentials
    participant S as SNOW KB API
    activate J
    J->>C: Fetch Credentials
    Note left of J: Uses Jenkins Credentials Plugin
    C-->>J: Return Credentials
    J->J: Run `make html`
    Note over J: Converts Markdown to HTML
    Note over J: Renders Mermaid Diagrams
    J->>S: POST JSON Payload
    Note over J,S: {"short_description": "Documentation Update",<br>"text": "HTML content",<br>"kb_knowledge_base": "sys_id",<br>"workflow_state": "published"}
    S-->>J: Confirm Publication
    deactivate J
```

---

## Next Steps

- **Proof of Concept**: Automate publishing with Jenkins.
- **GitHub Actions**: Request enablement for simpler CI/CD.
- **Expand LLM Use**:
     - AI Auto-generated drafts.
     - Documentation Taxonomy
- **Enhanced Indexing**:
    - Perm Decision Tree Builder and FreePlane.
    - Categorize by topic, project, etc.
    - Result: SNOW KB Mind Map Search Tree

---


## Summary

```mermaid
graph TD
    A(Collaborative Documentation)
    B(Longevity)
    C(Streamlined Workflows)
    D(Clarity)
    E(Team Sport Mentality)
    F(Project Success)

    A -->|Enables| B
    A -->|Supports| C
    A -->|Enhances| D
    B -->|Adds Stability| E
    C -->|Increased Efficiency| E
    D -->|Reduces Confusion| E
    E -->|Drives| F
    
    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style D fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style E fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style F fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
```

---

## Conclusion

- Collaborative Documentation drives success.
- Markdown ensures longevity, good LLM integration.
- VS Code, Pandoc, GitHub, Jenkins streamline workflows.
- Mermaid diagrams and CSS themes enhance clarity.
- Let’s make documentation a team sport!
