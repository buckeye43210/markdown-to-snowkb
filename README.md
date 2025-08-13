---
title: "Documentation: A Team Sport"
subtitle: "Collaborative Environment for Document Publication"
author: "Rick Holbert"
date: \today
aspectratio: 1610
theme: "PaloAlto"
colortheme: "whale"
fonttheme: "professionalfonts"
navigation: frame
header-includes:
- \usepackage[en-AU]{datetime2}
- \usepackage{hyperref}
hyperrefoptions:
colorlinks: true
linkcolor: white
urlcolor: blue

---

## Overview

- Project Backbone
- Knowledge Sharing
- Pitfalls of Poor Documents
- Bus Factor Risks
- Trained for Paper (Issue)
- Collaboration Benefits
- User Experience Boost
- Document Best Practices
- Document Life Cycle
- Team Sport Mindset
- Workflow Tools

---

## Overview (cont)

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

## Documentation: Successful Project Backbone

- **Clarity:** Aligns team goals, processes, tech details.
- **Scalability:** Guides new contributors as projects grow.
- **Decisions:** Tracks "*the why*" to avoid repeated errors.
- **Risks:** Ensures compliance in regulated fields.

**Example**: API docs enable seamless integration, reduces debugging.

---

## Knowledge Sharing & On-boarding

- **Democratizes info:** Reduces expert dependency.
- **Speeds on-boarding:** Quickly grasp workflows/tools.
- **Aids maintenance:** Simplifies troubleshooting.
- **Future-proofs:** Preserves knowledge amid changes.

**Example**: README with examples onboards engineers more quickly.

---

## Poor Documentation Pitfalls

- **Confusion:** Leads to errors, miscommunication.
- **Inefficiency:** Time wasted reverse-engineering.
- **Knowledge loss:** Gaps when experts leave (bus factor).
- **Costs:** Builds technical debt, rework.

**Example**: Undocumented code wastes hours on logic decoding.

---

## Bus Factor Defined

- **Measure:** Key individuals whose absence stalls project.
- **Low (1-2):** High risk, concentrated knowledge.
- **High (5+):** Resilient, distributed info.
- **Link to Docs:** Poor docs lower factor; good docs raise it.

**Mitigation**:

- Document processes/code/decisions.
- Cross-train teams.
- Use wikis/Git repos.
- Pair programming/code reviews.

```mermaid
graph LR
    A(Architecture Knowledge)
    A -->|Documented<br> & Shared| D(High Bus Factor)
    D --> E(Resilience)
    A -->|Solo| B(Low Bus Factor)
    B --> C(High Vulnerability)

    classDef neutral fill:#f9e79f,stroke:#333,stroke-width:2px;
    classDef low fill:#f5b7b1,stroke:#333,stroke-width:2px;
    classDef high fill:#a9dfbf,stroke:#333,stroke-width:2px;

    class A neutral;
    class B,C low;
    class D,E high;
```

---

## We've Been Trained for Paper

**Credit**: Ben Balter (2012)  
**Source**: [We've been trained to make paper](https://ben.balter.com/2012/10/19/we-ve-been-trained-to-make-paper/)

- Trained for printed paper, not web/digital.
- Word: 1980s print focus (margins, breaks); weak on hyperlinks, responsiveness.
- Digital dominance: Most documentation consumed online.

---

## Flawed Paper Tools Workflow

### Legacy process:

**Steps**:

1. Draft in Word.
2. Share email/folder.
3. Reconcile manually.
4. Repeat to finalize.
5. Convert to web format.
6. Publish.

**Issue**: Paper-first; web retrofit.

```mermaid
graph LR
    A(Draft in Word)
    A --> B(Share email/folder)
    B --> C(Reconcile changes)
    C -->|Repeat| C
    C --> D(Convert web)
    D --> E(Publish)

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

## Analogy: Water from filtered Coke is inefficient.

![Filtering Coke](images/coke_filter.jpg)

---

## **Hello World!** in Markdown

<center>

```text
**Hello World!***
```

</center>
    
---

## **Hello World** in MS Word XML
```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<w:document xmlns:w="http://schemas.openxmlformats.org/...">
    <w:body>
        <w:p>
            <w:r>
                <w:rPr>
                    <w:b/>
                </w:rPr>
                <w:t>Hello World!</w:t>
            </w:r>
        </w:p>
    </w:body>
</w:document>
```
**Any Questions?**

---

## Solution: Version Control & Web-First

**Version Control**:

- **Git**: (2005) tracks changes (character-level), branches, discussions.
- **Free**: DevOps Staple.

**Web-first flow**:

1. **Markdown**: Text-based content.
2. **Tools**: VS Code (edit).
3. **Git**: Version control.
4. **Git Repo**: Review, collaborate.

```mermaid
graph LR
    A(Markdown content)
    A --> B(VS Code)
    B --> C(Git version control)
    C --> D(Git Repo)

    classDef markdown fill:#f9e79f,stroke:#333,stroke-width:2px;
    classDef git fill:#a9dfbf,stroke:#333,stroke-width:2px;
    classDef tools fill:#f5b7b1,stroke:#333,stroke-width:2px;
    classDef repo fill:#a3e4d7,stroke:#333,stroke-width:2px;

    class A markdown;
    class B git;
    class C tools;
    class D repo;
```

- **Shift**: Web-first; pure content in Markdown.
- **Break** proprietary traps: focus on document essence.

**Credit**: Ben Balter (2012).

---

## The Big Picture

```mermaid
graph TD
    A(Team Sport<br> Mentality)
    A --> B(Longevity)
    A --> C(Automated Workflows)
    A --> D(Clarity)
    B --> E(Documentation<br> Collaboration)
    C --> E
    D --> E
    E --> F(Project Success)

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style D fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style E fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style F fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
```

---

## Collaboration Benefits

**Teams Deliver**:

- **Accuracy**: Multi-perspectives identify documentation gaps.
- **Relevance**: Tailors for devs/users.
- **Improvement**: Git/wikis for updates.
- **Ownership**: Shared maintenance.

**Example**: Cross-team document store ensures comprehensive docs.

**Benefits**:

- **Empowerment**: Self-service guides reduce support dependencies.
- **Trust**: Professional documents reflect quality.
- **Reduced errors**: Intuitive instructions.
- **Adoption**: Easy learning boosts uptake.

**Example**: Relevent SOP reducing ticket count.

---

## Best Practices

**Good Documentation**:

- **Concise**: Simple language, visuals.
- **Organized**: Logical structure, searchable.
- **Updated**: Living docs, with assigned owners.
- **Templated**: Standardized (READMEs, SOPs, APIs).
- **Tested**: User validated.

**Documentation Life Cycle**

```mermaid
graph LR
    A(Plan: Requirements/specs) --> B(Code: Code/APIs)
    B --> C(Build: Processes)
    C --> D(Test: Cases/results)
    D --> E(Release: Notes)
    E --> F(Deploy: Steps)
    F --> G(Operate: Runbooks)
    G --> H(Monitor: Metrics/incidents)
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

## Process Workflow

**Team Sports Mindset**

- **All members contribute**: Devs, writers, users.
- **Tools**: To Streamline collaboration.
- **Versioning/Automation**: Provide efficiency.
- **Goal**: Accurate, living, maintainable docs.

**Workflow Overview**

- **Input**: SMEs, feedback.
- **Tools**: VS Code, Markdown, Mermaid, Pandoc, GitHub.
- **Steps**: Write, preview, collaborate, convert, publish.
- **Focus**: Simplicity, integration, CI/CD.

---

## Markdown: Core Authoring

```mermaid
graph TD
    A(Markup Formats)
    B(Long-Term<br> Readability)
    C(LLM Draft)
    D(Edit)
    E(GitHub Hosting)
    F(Collaberative<br> Review)
    G(Publish Early And Often)
    A  --> B
    C  --> D
    E  --> F
    B  --> G
    D  --> G
    F  --> G

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style E fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style F fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style G fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
```

---

## Mermaid: Mind Map

```mermaid
mindmap
  root(Mermaid)
    (Diagram Description Language)
      Simple syntax
      Many types
    (Markdown Similarities)
      Portable
      Agnostic
      Any editor
      Future-proof
    (Embed in MD)
      Render graphics
      SVG with links
    (Adopted)
      Lucid
      GitHub
      Pandoc
      VS Code
```

---

## Step 1: VS Code Content Creation

```mermaid
graph LR
    A(Write Markdown)
    A --> B(Add Mermaid)
    B --> C(Preview in VS Code)
    C --> D(Commit Changes)
    D -->|Repeat| A

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
```

- **Extensions**: Markdown Preview Mermaid.
- Add diagrams/workflows.
- Paste screenshots/links.
- Real-time preview.

---

## Step 2: Pandoc Conversion

```mermaid
graph TD
    A(MD + Mermaid)
    A --> B(Pandoc + Filter)
    B --> C(HTML)
    B --> D(PDF)
    B --> E(EPUB)
    B --> F(LaTeX)
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

- Renders to formats.
- YAML metadata.
- Command:

```bash
pandoc -F mermaid-filter in.md -o out.html
```

---

## Step 3: CSS Styling

- **From Word**: Save as HTML, extract CSS.
- **Tool**:
```bash
pip install html2css
html2css -i html -o css
```
- Apply: `--css=style.css`.
- Controls: Fonts, colors, headings.

**Command**:
```bash
pandoc -F mermaid-filter --css=style.css in.md -o out.html
```

---

## Step 4: GitHub Collaboration

```mermaid
graph LR
    A(Edit Markdown) --> B(Push to Branch)
    B --> C(Pull Request)
    C --> D(Review)
    D --> E{Approved?}
    E -->|Yes| F(Merge w/ Main)
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

- **Repo hosted**: Change Tracking.
- **Pull Request**: Reviews/Approves.
- **Preview**: Native Markdown and Mermaid rendering.

---

## Step 5: Makefile Automation

- Tasks: html, push, all.
- Example:

```makefile
.PHONY: all push html

all: push html

html: 
	pandoc -F mermaid-filter -s --css=my.css in.md -o in.html

push:
	git commit -am "Update docs" && git push
```

- Run:
```bash
make
```

---

## Step 6: SNOW KB Publishing

- **Manual**:
    - Paste HTML </>
    - Update KB
    - Preview KB
    - Upload images
    - Submit KB for review
- **Auto**: Jenkins CI/CD
    - Checkout
    - Build (make html)
    - POST to API
    - Secrets: Jenkins Credentials
- **Alternatives**:
    - Makefile, Curl, KeePass
    - GitHub Actions (YAML workflow, API POST)

---

## Jenkins CI/CD Pipeline Example

```mermaid
sequenceDiagram
    Jenkins->>Creds: Fetch
    Creds-->>Jenkins: Return
    Jenkins->>Jenkins: render html
    Jenkins->>SNOW KB API: POST JSON
    SNOW KB API-->>Jenkins: Confirm
```

---

## Next Steps

- **CI/CD Pipeline**: Jenkins POC to automatically render and publish.
- **Alt CI/CD**: Enable GitHub Actions for simpler automation.
- **Leverage AI**: Drafts, templates, classification taxonomy.
- **Investigare**: Process improvements.
- **Indexing**: Leverage Decision trees, mind maps; categorize attributes.

---

## Summary

```mermaid
graph TD
    A(Team Sport<br> Mentality)
    A --> B(Longevity)
    A --> C(Automated Workflows)
    A --> D(Clarity)
    B --> E(Documentation<br> Collaboration)
    C --> E
    D --> E
    E --> F(Project Success)

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style D fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style E fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style F fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
```

---

## Key Takeaways

- **Strategic asset**: Sharing, on-boarding, maintenance.
- **Avoid pitfalls**: Confusion, costs.
- **Collaboration**: Accuracy, improved user experience.
- **Mindset**: Team Sport.
- **Tools**: Markdown, Mermaid, VS Code, Pandoc, GitHub, Automation.

**Action**:

- **Invest**: Retool legacy document workflows.
- **ROI**: Repeatable processes, reduced time, effort and empowered teams.
