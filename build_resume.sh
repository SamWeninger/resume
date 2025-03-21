#!/bin/bash

# Define file names
TEX_FILE="resume.tex"
PDF_FILE="resume.pdf"
PNG_DIR="images"
PNG_FILE="$PNG_DIR/resume.png"

# Clean up auxiliary files
echo "Cleaning up auxiliary files..."
rm -f *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk

# Compile the LaTeX document to PDF
echo "Compiling $TEX_FILE to PDF..."
xelatex $TEX_FILE

# Check if PDF was created successfully
if [ -f "$PDF_FILE" ]; then
    echo "PDF created successfully: $PDF_FILE"
    
    # Ensure the output directory exists
    if [ ! -d "$PNG_DIR" ]; then
        mkdir -p "$PNG_DIR"
    fi

    # Convert the PDF to PNG with a background color using ImageMagick
    echo "Converting $PDF_FILE to PNG with a background color..."
    magick -density 300 $PDF_FILE -background "#FAF9F6" -flatten -quality 90 $PNG_FILE
    
    # Check if PNG was created successfully
    if [ -f "$PNG_FILE" ]; then
        echo "PNG created successfully: $PNG_FILE"
    else
        echo "Error: PNG conversion failed."
    fi
else
    echo "Error: PDF compilation failed."
fi