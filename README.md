---
title: "Documentation: A Team Sport"
subtitle: "A Collaborative Environment For Document Publication"
author: "Rick Holbert"
date: "13 Aug 2025"
theme: "PaloAlto"
colortheme: "whale"
fonttheme: "professionalfonts"
header-includes:
  - \usepackage{hyperref}
---

# Documentation Overview

- [Backbone of Successful Projects](#backbone)
- [Enables Knowledge Sharing](#knowledge-sharing-and-onboarding)
- [Consequences of Poor Documentation](#poor-docs)
- [The Bus Factor](#bus-factor)
- [Trained to Make Paper](#make-paper)
- [Collaboration for Effective Documentation](#collaboration)
- [Enhances User Experience](#user-experience)
- [Best Practices](#best-practices)
- [Documentation Life Cycle](#documentation-life-cycle)
- [Team Sport Mindset](#team-sport-mindset)
- [Workflow Overview](#workflow-overview)

---

# Overview (cont)

- [Markdown for Authoring](#markdown)
- [Mermaid for Diagrams]($mermaid)
- [VS Code with Preview](#vs-code)
- [Pandoc for Conversion](#pandoc)
- [CSS Styling](#css-styling)
- [GitHub Collaboration](#github-collaboration)
- [Make File Automation](#makefile)
- [SNOW KB Publishing](#snow-kb)
- [Next Steps](#next-steps)
- [Summary](#summary)
- [Key Takeaways](#key-takaways)

---

# Documentation: The Backbone of Success {#backbone}

- Clarity and Alignment: Ensures team members understand goals, processes, and technical details.
- Scalability: Supports project growth by guiding new contributors.
- Decision Tracking: Captures the _why_ behind choices, avoiding repeated mistakes.
- Risk Mitigation: Ensures compliance in __regulated industries__, reducing risks.

**Example**: Clear API documentation enables developers to integrate systems without guesswork, saving time.

---

# Knowledge Sharing and Onboarding

- Democratizes Knowledge: Reduces reliance on individual experts, fostering autonomy.
- Accelerates Onboarding: Helps new hires grasp workflows and tools quickly.
- Supports Maintenance: Simplifies troubleshooting with clear guides.
- Future-Proofs Projects: Preserves knowledge as teams or technologies evolve.

**Example**: A README with setup instructions can onboard a new engineer in days, not weeks.

---

# Pitfalls of Poor Documentation {#poor-docs}

- Confusion: Ambiguous or missing docs lead to miscommunication and errors.
- Inefficiency: Teams waste time searching for answers or reverse-engineering existing systems.
- Knowledge Loss: Departure of key members creates gaps ("[bus-factor](#bus-factor)").
- Increased Costs: Technical debt accumulates, requiring costly rework.

**Example**: Unclear code without comments forces developers to spend hours deciphering logic.

---

# Bus Factor

The **bus factor** is a concept used to measure the risk of knowledge loss in a project or team, specifically the number of key individuals who,
if they were suddenly unavailable (e.g., "hit by a bus"), would leave the project in disarray due to their unique knowledge or expertise.
It highlights the vulnerability of a project when critical information is held by only a few people and is not documented or shared.


---

# Bus Factor (cont) {#buss-factor01}
## Key Points About the Bus Factor

- **Definition**: The minimum number of team members whose absence would stall a project due to lost knowledge.
- **Low Bus Factor**: A low bus factor (e.g., 1 or 2) indicates high risk, as the project relies heavily on a small number of individuals. For example, if only one developer knows how a critical system works, the bus factor is 1.
- **High Bus Factor**: A higher bus factor (e.g., 5 or more) means knowledge is distributed across more team members, reducing risk and making the project more resilient.


---

# Bus Factor (cont) {#buss-factor02}
## Key Points (cont)

- Connection to Documentation: Poor documentation often contributes to a low bus factor, as critical information isn’t written down or shared.
- Good documentation increases the bus factor by ensuring knowledge is accessible to others.
- Mitigation: To improve the bus factor, teams can:
- Document processes, code, and decisions thoroughly.
- Cross-train team members to share expertise.
- Use collaborative tools (e.g., wikis or shared git repositories) to centralize knowledge.
- Encourage knowledge-sharing practices like pair programming or regular team reviews.

---

# Bus Factor (cont)  {#buss-factor03}

## Example
In a software project, if only one developer understands the codebase’s architecture and there’s no documentation, the bus factor is 1.
If that developer leaves or is unavailable, the project could grind to a halt as others struggle to understand the system.
By contrast, if the architecture is well-documented and multiple team members are familiar with it, the bus factor is higher, and the project is less vulnerable.<br>

---

# Why Bus Factor Matters

A low bus factor can lead to delays, increased costs, or project failure when key individuals are unavailable due to illness, departure,
or other reasons. It underscores the importance of documentation and knowledge sharing, as highlighted in this presentation, to ensure project continuity and resilience.

---

# We've Been Trained to Make Paper {#make-paper}

## Reimagining Content Creation for the Web
**Author**: Credit to Ben Balter (2012)  
**Source**: [https://ben.balter.com/2012/10/19/we-ve-been-trained-to-make-paper/](https://ben.balter.com/2012/10/19/we-ve-been-trained-to-make-paper/)  
**Date**: August 10, 2025

---

# Problem with Traditional Workflows {#paper-problem00} 
- Trained to create content for **paper**, not the web.
- Traditional tools prioritize print-centric features:
  - Margins, page breaks, and physical layout.
  - Limited support for web features like hyperlinks or mobile responsiveness.
- Most documents are consumed digitally, not physically.

---

# Problem (cont) {#paper-problem01}

## Broken Collaborative Process

Typical document collaboration workflow:

~~~mermaid
graph LR
    A(Edit in Word)
    A --> B(Share via email attachment or shared folder)
    B --> C(Manually reconcile changes)
    C -->|Repeat until finalized| A
    C --> D(Convert to web-friendly format)
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
~~~

1. Edit in Microsoft Word.
2. Share via email attachment or shared folder.
3. Manually reconcile changes.
4. Repeat until finalized.
5. Convert to web-friendly format.
6. Publish.

**Problem**: Content prepared for print, then retrofitted for web.

---

# Why Print-Centric Tools Fail
- Microsoft Word was designed in the 1980s for **physical documents**.
- Features like margins and page breaks are irrelevant for digital content.
- Web-specific needs (e.g., mobile responsiveness, machine-readability) are poorly supported.
- Proprietary formats (e.g., .doc) lock content in complex, inaccessible structures.

---

# Collaboration Challenges
Common issues with traditional collaboration:
- Confusing file names (e.g., `foo-document_2012_10_15_final2.doc`).
- No clear version history or context for changes.
- Questions like: Who made this change? Was my edit accepted? Can we edit simultaneously?
- No easy way to experiment with parallel versions.

---

# The Solution: Version Control
- Invented in the 1970s, widely used by developers.
- Tracks every change down to the character.
- Maintains a master copy and supports transparent discussions.
- Enables parallel experimentation without conflicts.
- Free and accessible tools like **Git** make it easy to adopt.

---

# Breaking Free from Proprietary Formats
- Proprietary formats (e.g., .doc) mix content with formatting instructions.
- Result: Complex, inaccessible files that require specific software.
- Analogy: Getting water by filtering a can of Coke through a Brita.
- Solution: Focus on **pure content** using open, text-based formats like **Markdown**.

---

# A Web-First Workflow
To create content for the web:
1. Use **Markdown** for simple, text-based content creation.
2. Adopt **Git** and platforms like **GitHub** for collaboration.
3. Tools to start:
   - **GitHub CLI** for version control.
   - **VS Code** for Markdown editing.
4. Create a repository and collaborate seamlessly.

~~~mermaid
graph LR
    A[Use Markdown for content creation] --> B[Adopt Git and GitHub for collaboration]
    B --> C[Use tools: GitHub, VS Code]
    C --> D[Create repository and collaborate]

    classDef markdown fill:#f9e79f,stroke:#333,stroke-width:2px;
    classDef git fill:#a9dfbf,stroke:#333,stroke-width:2px;
    classDef tools fill:#f5b7b1,stroke:#333,stroke-width:2px;
    classDef repo fill:#a3e4d7,stroke:#333,stroke-width:2px;

    class A markdown;
    class B git;
    class C tools;
    class D repo;
~~~    

---

# Conclusion: Stop Making Paper
- Shift from print-first to **web-first** content creation.
- Embrace modern tools for collaboration and version control.
- Break the habit of using outdated, print-centric software.
- Start today: Learn Markdown, use Git, and focus on **content**.

**Credit**: Ben Balter, 2012 [](https://ben.balter.com/2012/10/19/we-ve-been-trained-to-make-paper/)nly distribution, the time is ripe for a more evolved, text-centric, distributed workflow to become mainstream. Stop making paper, start collaborating.

---

# Collaboration for Effective Documentation {#collaboration}

- Accuracy: Multiple perspectives catch errors and fill gaps.
- Relevance: Tailors content to diverse audiences (e.g., users vs. developers).
- Continuous Improvement: Collaborative tools like GitHub and wikis keep docs up-to-date.
- Shared Ownership: Encourages teams to maintain and refine documentation.

**Example**: A wiki with contributions from developers, designers, and support ensures comprehensive docs.


---

# Enhances User Experience {#user-experience}

- Empowers Users: Clear guides and FAQs enable self-service, reducing support queries.
- Builds Trust: Professional documentation reflects product quality.
- Reduces Frustration: Intuitive instructions prevent user errors.
- Supports Adoption: Well-documented products are easier to learn, boosting uptake.

**Example**: A clear user manual for a software tool reduces support tickets by guiding users.


---

# Best Practices for Documentation {#best-practices}

- Clear and Concise: Use simple language and visuals (e.g., diagrams, screenshots).
- Organized and Searchable: Structure content logically and use searchable platforms.
- Regular Updates: Treat documentation as a living resource, assign owners.
- Use Templates: Standardize formats for consistency (e.g., READMEs, SOPs, API docs).
- Test It: Validate docs with new users for clarity and accuracy.



---

# Documentation Life Cycle {#life-cycle}

~~~mermaid
graph TD
    A(Plan<br><i>Document requirements, specs</i>)
    A --> B(Code<br><i>Document code, APIs</i>)
    B --> C(Build<br><i>Document build process</i>)
    C --> D(Test<br><i>Document test cases, results</i>)
    D --> E(Release<br><i>Document release notes</i>)
    E --> F(Deploy<br><i>Document deployment steps</i>)
    F --> G(Operate<br><i>Document operations, runbooks</i>)
    G --> H(Monitor<br><i>Document metrics, incidents</i>)
    H --> A
    
    classDef planStyle fill:#FFD700,stroke:#333,stroke-width:2px;
    classDef codeStyle fill:#1E90FF,stroke:#333,stroke-width:2px;
    classDef buildStyle fill:#32CD32,stroke:#333,stroke-width:2px;
    classDef testStyle fill:#FF4500,stroke:#333,stroke-width:2px;
    classDef releaseStyle fill:#9932CC,stroke:#333,stroke-width:2px;
    classDef deployStyle fill:#00CED1,stroke:#333,stroke-width:2px;
    classDef operateStyle fill:#FF69B4,stroke:#333,stroke-width:2px;
    classDef monitorStyle fill:#FFA500,stroke:#333,stroke-width:2px;
    
    class A planStyle;
    class B codeStyle;
    class C buildStyle;
    class D testStyle;
    class E releaseStyle;
    class F deployStyle;
    class G operateStyle;
    class H monitorStyle;
~~~



---

# Team Sport Mindset

- Everyone contributes: developers, writers, consumers.
- Collaborative tools streamline workflows.
- Version control and automation boost efficiency.
- **Goal**: Living, maintainable, up-to-date documentation.


---

# Workflow Overview

- Input: Subject Matter Experts, feedback loops.
- Tools: VS Code, Markdown, Mermaid, Pandoc, GitHub.
- Steps: Write, preview, collaborate, convert, publish.
- Focus: On simplicity, structure, integration, longevity.
- CI/CD: Continuous Integration/Continuous Delivery


---

# What is Markdown? {#markdown}

- Markdown: A lightweight markup language.
- Decorate Text: Adds structure and formatting.
- WYSIWYM: What You See Is What You Meant.
- Formatted Text: Determines structure and format.
- Platform Independent: Create using any text editor.


---

# Benefits of Markdown

- Human Readable: Displayed text easily comprehended.
- Longevity: Markup languages are lightweight, durable.
    - Runoff (1960s), Postscript (1982), \LaTeX (1984)
- LLM Integration: LLM suggestions, editor plugins.
- GitHub Rendering: Native Markdown/Mermaid support.
- Fewer Distractions: Focus on pure essence of document.
- Attributes: Structured, portable, future-proof.
- History: Word processors fade; Markup languages endure.


---

# Markdown Benefits Diagram {#benefits-diagram}

~~~mermaid
graph TD
    A(Markup Formats)          --> B(Long-Term Readability)
    C(LLM: Generate Markdown)  --> D(AI-Enhanced Editing)
    E(GitHub: Render Markdown) --> F(Collaborative Review)
    B --> G(Modern Markdown Use)
    D --> G
    F --> G
    G --> H(Pandoc, Mermaid, CI/CD)
    H --> I(Publish Early, Publish Often)
    I --> I

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style E fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style F fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style G fill:#2E8B57,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style H fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
~~~


# What is Mermaid? {#mermaid}

- Mermaid is a Diagram Description Language.
- Uses simple, text-based syntax.
- Like Markdown, create diagrams using any text editor.
- Diagrams easily added to Markdown documents.
- Embedded Mermaid diagrams rendered into graphics.
- Wide Adoption: Supported by Lucid, GitHub, Pandoc, etc.


---

# What is Mermaid (cont)?

## Mermaid Mind Map

~~~mermaid
mindmap
  root(Mermaid)
    Diagram Description Language
      Simple, text-based syntax
      Many diagram types supported
    Like Markdown
      Portable
      Platform Agnostic
      Use any text editor
      Future-Proof
    Embed Diagrams in Markdown
      Diagrams rendered into graphics
      Rendered SVG supports click links
    Widely Adopted
      Lucid
      GitHub
      Pandoc
      VS Code
      Others
~~~


---

# Sample Mermaid Diagram Types

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
- C4 Diagram - Architecture models.

---

# Step 1: Create Content in VS Code

~~~mermaid
graph LR
    A(Write Markdown) --> B(Add Mermaid Diagrams)
    B --> C(Preview in VS Code)
    C --> D(Commit Changes)
    D -->|Lather, Rinse and Repeat| A

    style A fill:#4682B4,stroke:#2E8B57,stroke-width:2px,color:#FFFFFF
    style B fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
    style C fill:#20B2AA,stroke:#4682B4,stroke-width:2px,color:#FFFFFF
    style D fill:#ADD8E6,stroke:#2E8B57,stroke-width:2px
~~~

- Use VS Code with Markdown Preview Mermaid Support.
- Write Markdown for simplicity.
- Add Mermaid diagrams for workflows, etc.
- Paste screenshots from clipboard.
- Add other images as Markdown links.
- Preview diagrams and images in real-time.
- Commit Changes to GitHub.
- For Best Results: Lather, Rinse and Repeat.


---

# Step 2: Pandoc Conversion Tool {#pandoc}

~~~mermaid
graph TD
    A(Markdown with Mermaid)
    A --> B(Pandoc with<br>mermaid-filter)
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
~~~

- Renders Markdown to HTML, PDF, EPUB, etc.
- Uses mermaid-filter for diagram rendering.
- YAML formatted metadata values in document header.

Example Command:

pandoc -F mermaid-filter -t html in.md -o out.html


---

# Step 3: CSS Styling

- Create Word document with styles (fonts, colors).
- Convert DOCX to HTML via Save As.
- Extract CSS from HTML style section.

~~~bash
pip install html2css
html2css --input saved_as.html --output style.css
~~~

- Apply to HTML: pandoc --css=style.css.
- Controls: headings, fonts, font sizes, colors, etc.

Example Command:

~~~bash
pandoc -F mermaid-filter                           \
       --css=style.css                             \
       --to html                                   \
       --out out.html in.md
~~~


---

# Step 4: GitHub Collaboration

~~~mermaid
graph LR
    A(Edit/Fix Markdown)
    A --> B(Push to Feature Branch)
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
~~~

- Host Markdown in GitHub repository.
- Use pull requests for reviews, edits.
- Track changes, maintain history.
- Native Markdown/Mermaid rendering.


# Step 5: Makefile Conversion Automation {#makefile}

- Automates conversions, Git operations.
- Tasks: all, html, push.
- Commands: make all, make html, make push.

~~~makefile
.PHONY: all html push

all: html push

html: 
	pandoc -F mermaid-filter -s --css=styles.css      \
    in.md -o in.html

push:
	git commit -m "Update docs" -a && git push
~~~


---

# Step 6: SNOW KB Publishing {#snow-kb}

- Manual: Process Follows:
    - Paste HTML into SNOW KB editor
    - Update
    - Preview
    - Upload images
    - Submit for review


- Automatic: Jenkins CI/CD Pipeline:
    - Checkout: GitHub repo branch
    - Build: Run make html
    - Publish: POST JSON to ServiceNow API
    - Secrets: Stored in Jenkins Credentials Plugin.


- Alternative: GitHub Actions (make html YAML workflow, API POST) -- not currently enabled.


---

# Sequence Diagram

~~~mermaid
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
~~~


---

# Next Steps

- Proof of Concept: Automate publishing with Jenkins.
- GitHub Actions: Request enablement for simpler CI/CD.
- Expand LLM Use:
    - AI Auto-generated drafts.
    - Documentation Taxonomy.
- CSS style improvements.
- Enhanced Indexing:
    - Perm Decision Tree Builder and FreePlane.
    - Categorize by topic, project, attributes, etc.
    - Result: SNOW KB Mind Map Search Tree.


---

# Summary

~~~mermaid
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
~~~


---

# Key Takeaways

- Documentation is a strategic asset for project success.
- Enables knowledge sharing, onboarding, and maintenance.
- Poor documentation causes confusion and inefficiency.
- Collaboration ensures accuracy and relevance.
- Enhances user experience and product adoption.
- Let's Make Documentation A Team Sport!

**Call to Action**: Invest in documentation early and collaboratively to save time, reduce costs, while empowering your team and stakeholders.  

