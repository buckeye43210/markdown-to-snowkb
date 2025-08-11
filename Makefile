# Define phony targets
.PHONY: all pdf beamer html lint push clean

# Default target
all: push beamer

# Generate PDF document
pdf:
	pandoc -F mermaid-filter -t pdf README.md -o output.pdf --pdf-engine=xelatex

# Generate Beamer slides
beamer:
	pandoc -F mermaid-filter -t beamer README.md -o slides.pdf --pdf-engine=xelatex

# Generate HTML output
html:
	pandoc -F mermaid-filter --standalone --css=styles.css README.md -o output.html

# Check spelling
lint:
	aspell check README.md

# Push changes to GitHub
push:
	git add . && git commit -m "Update docs" && git push

# Clean up
clean:
	rm -f *.html *.pdf
