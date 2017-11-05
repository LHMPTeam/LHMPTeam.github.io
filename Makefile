
all: index.html
index.html: content/header.html content/footer.html content/content.html

content/content.html: content/content.md
		markdown content/content.md > content/content.html -f toc
		cat content/header.html content/content.html content/footer.html > index.html
