---
title: Documentation Should Be A Team Sport
Subtitle: Creating Collaborative Technical Documentation
Author: Rick Holbert
Date: 13 August 2025
theme: PaloAlto
colortheme: whale
fontheme: professionalfonts
---

## Why Documentation Matters

- Documentation is the backbone of project success.
- Enables knowledge sharing, onboarding, and maintenance.
- Poor documentation leads to confusion and inefficiency.
- Team collaboration ensures accuracy and relevance.

------

## The Team Sport Mindset

- Everyone contributes: developers, writers, and users.
- Collaborative tools streamline the process.
- Version control and automation enhance efficiency.
- Goal: Create living, maintainable documentation.

------

## Workflow Overview

- Tools: VS Code, Markdown, Mermaid, Pandoc, GitHub.
- Steps: Write, preview, collaborate, convert, publish.
- Focus on simplicity, integration, and longevity.

------

## Benefits of Markdown

- Longevity: Lightweight markup ensures durability
- AT&T’s roff for patent documents dates from the 1970s, still readable today
- LLM Integration: Markdown’s simplicity enables AI-assisted editing and generation (e.g., LLM for content suggestions).
- GitHub Rendering: Native support for Markdown and Mermaid diagrams in GitHub for seamless collaboration.
- Encourages focus on document content and structure.
- Markdown: Structured, portable, future-proof format.
- Wordprocessors come and go -- Markdown endures.

------

## Markdown Benefits Workflow

```mermaid
graph TD
    A[AT&T: roff for Patents] --> B[Long-Term Readability]
    C[LLM: Generate Markdown] --> D[AI-Enhanced Editing]
    E[GitHub: Render Markdown] --> F[Collaborative Review]
    B --> G[Modern Markdown Use]
    D --> G
    F --> G
```

------

## The Process

Step 1: Write VS Code using Markdown

- Use VS Code with the preview plugin.
- Write documentation in Markdown for simplicity.
- Insert Mermaid diagrams for visual workflows.
- Preview diagrams in real-time for accuracy.

### Mermaid Diagram Example

```mermaid
graph LR
    A[Write Markdown] --> B[Add Mermaid Diagrams]
    B --> C[Preview in VS Code]
    C --> D[Commit to GitHub]
```

------

Step 2: Convert Markdown with Pandoc

- Pandoc converts Markdown to HTML, PDF, etc.
- Use mermaid-filter to render Mermaid diagrams.
- `pandoc -F mermaid-filter input.md -o output.pdf`
- Ensures diagrams are embedded in the final document.


Step 3: Styling with CSS from .docx

- Use a .docx file with desired styles (e.g., fonts, colors).
- Convert .docx to CSS using tools like html2css.
- Apply CSS to HTML output for consistent formatting.
- Example: Define heading styles, font sizes, and colors.

------

Step 4: Collaboration with GitHub

- Host Markdown files in a GitHub repository.
- Use pull requests for team reviews and edits.
- Track changes and maintain version history.
- Markdown and Mermaid diagrams render natively.

### GitHub Collaboration Workflow

```mermaid
graph LR
    A[Edit Markdown] --> B[Push to Branch]
    B -->      C[Create Pull Request]
    C -->      D[Team Review]
    D -->      E{Approved}
    E -->|Yes| F[Merge to Main]
    E -.->|No| A
    F -->      G[Publish]
```

------

Step 5: Manual ServiceNow KB Publishing

- Open ServiceNow KB Article in HTML Edit Mode
- Paste HTML article contents into HTML editor
- Click Update
- Preview SNOW KB Article
- Upload Images and Submit for Review

Step 6: Automatic ServiceNow KB Publishing

- Use ServiceNow Knowledge Base API to publish documentation.
- Automate content updates with Makefiles and scripts.
- Store API credentials securely in KeePass.
- Ensure documentation is accessible to stakeholders.
- This would be much easier with GitHub Actions

------

### ServiceNow API Integration

```mermaid
sequenceDiagram
    participant A as Makefile
    participant B as KeePass
    participant C as ServiceNow API
    A->>B: Retrieve Credentials
    B-->>A: Return Credentials
    A->>C: POST Markdown Content
    C-->>A: Confirm Publication
```

------

Step 7: Automating with Makefile

- Create a Makefile to automate conversions.
- Example tasks: Convert Markdown to HTML/PDF, push to GitHub, etc.
- Simplifies repetitive tasks for the team.
- Commands: `make pdf, make html, or make push`

### Makefile Example

```makefile
pdf:
    pandoc -F mermaid-filter in.md -o out.pdf
html:
    pandoc -F mermaid-filter -s in.md -o out.html
push:
    git commit -m "my change message" -a && git push
```

------

## Conclusion

- Documentation thrives with team collaboration.
- Use Markdown for longevity, LLM integration, image and diagram integration.
- VS Code, Pandoc, GitHub, and Make streamline the process.
- Mermaid diagrams add clarity and engagement.
- Let's make documentation a team sport together!

