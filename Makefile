artigo.docx : artigo.md biblio.yaml reference.docx
	@pandoc -o $@ --reference-doc=reference.docx \
		--filter=pandoc-crossref --citeproc \
		$<
	@echo $@
