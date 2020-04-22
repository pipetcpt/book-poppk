all: pdf gitbook epub

pdf:
	cp "references/의약품 개발 시 집단 약동학 활용을 위한 가이드라인.pdf" docs/poppk.pdf

gitbook:
	Rscript --quiet _render.R "bookdown::gitbook"

epub:
	Rscript --quiet _render.R "bookdown::epub_book"

