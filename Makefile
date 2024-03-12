
all: $(wildcard *.evy)
	@for file in $^; do \
  		echo "$$file"; \
  		evy fmt -w $$file; \
		evy run $$file; \
	done