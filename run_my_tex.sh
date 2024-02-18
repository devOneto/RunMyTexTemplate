# Title: Run my Tex!
# Author: Joao Araujo
# Description: Run my Tex! is a script for automaticaly compile LaTeX files in order to improve the visualization of the result pdfs.

# Get the main file
main_file="./main.tex"
# Get all .tex files
file_list=$(find ./ -type f -name "*.tex" | awk '{ printf "%s ", $0 }')

echo "|-------------------------------|"
echo "|...Compile My Tex is running...|";
echo "|-------------------------------|"

# Compile all the files into pdfs and clean up auxiliary generated files
when-changed -r $main_file $file_list -c pdflatex --output-directory=./out $main_file && find ./out -name "*.aux" -type f -delete