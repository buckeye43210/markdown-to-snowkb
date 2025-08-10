.PHONY: all pdf beamer html push clean

# Default target
all: pdf beamer html

# Generate pdf document
pdf:
	pandoc -F mermaid-filter -t pdf README.md -o output.pdf --pdf-engine=xelatex

# Generage beamer slides
beamer:
	pandoc -F mermaid-filter -t beamer README.md -o slides.pdf --pdf-engine=xelatex

# Generate html output
html:
	pandoc -F mermaid-filter --standalone --css=styles.css README.md -o output.html

# Push changes to GitHub
push:
	git add . && git commit -m "Update docs" && git push

# Clean up
clean:
	rm -f *.html *.pdf
