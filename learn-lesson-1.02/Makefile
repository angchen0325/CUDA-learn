test: test.cu
	nvcc test.cu -o test

.PHONY: clean

clean:
	@find . -maxdepth 1 -type f ! -name "*.*" ! -name "Makefile" -exec rm -f {} +
	@echo "Clean success!"