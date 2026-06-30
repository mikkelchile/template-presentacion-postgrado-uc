MAIN=main
BUILD_DIR=build

all:
	mkdir -p $(BUILD_DIR)
	latexmk -lualatex -interaction=nonstopmode -halt-on-error -outdir=$(BUILD_DIR) $(MAIN).tex
	cp $(BUILD_DIR)/$(MAIN).pdf $(MAIN).pdf

quick:
	mkdir -p $(BUILD_DIR)
	lualatex -interaction=nonstopmode -halt-on-error -output-directory=$(BUILD_DIR) $(MAIN).tex

clean:
	latexmk -C -outdir=$(BUILD_DIR) $(MAIN).tex || true
	rm -rf $(BUILD_DIR)
	rm -f $(MAIN).pdf