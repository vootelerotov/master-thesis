
# Thesis make

# Names
TARGET-FOLDER = build
SOURCE-FILE = thesis.tex
OUTPUT-PDF = thesis.pdf

# Env
RM = rm -rf
PDFLATEX = pdflatex
PDFLATEX-ARGS = -synctex=1 -shell-escape -interaction=nonstopmode --output-directory=${TARGET-FOLDER}
PDF-READER = gnome-open



# Builds the whole thing


all: pdf open

# Create the PDF

pdf: folders
	$(PDFLATEX) $(PDFLATEX-ARGS)  $(SOURCE-FILE)

# Clean up
clean:
	$(RM) $(TARGET-FOLDER)

# Open the PDF created
open:
	$(PDF-READER) $(TARGET-FOLDER)/$(OUTPUT-PDF)

folders:
	mkdir -p $(TARGET-FOLDER)
