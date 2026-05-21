SLIDE = Marp紹介スライド.md
HTML  = dist/Marp紹介スライド.html
PDF   = dist/Marp紹介スライド.pdf

.PHONY: all html pdf watch clean

all: html pdf

html: $(HTML)

pdf: $(PDF)

$(HTML): $(SLIDE) assets/sample-image.svg
	marp --allow-local-files $< -o $@

$(PDF): $(SLIDE) assets/sample-image.svg
	marp --allow-local-files --pdf $< -o $@

watch:
	marp --allow-local-files --html --server .

clean:
	rm -f $(HTML) $(PDF)
