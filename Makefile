.PHONY: all commit push

COMMIT_MG ?= Auto commit: $(shell date '+%Y-%m-%d %H:%M:%S')

commit:
	git add .
	git commit -m "$(COMMIT_MSG)"
push:
	git push origin main
all: commit push
