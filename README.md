# pandoc-markdown

Pandoc is a powerful set of open-source command-line tools designed to facilitate document conversion between various markup formats. It acts as a universal document converter, allowing you to transform files from one format to another seamlessly. With Pandoc, you can convert documents written in formats such as Markdown, HTML, LaTeX, Microsoft Word, and many others.

## Setup 

### Pre-requisite
!!! This repository cover the usage on Linux distibution (Ubuntu) only !!!

Pandoc relies on LaTeX to handle conversions involving complex document structures, mathematical equations, and advanced typesetting features. LaTeX is a widely-used typesetting system commonly used in academia, scientific research, and publishing.

When converting documents to formats like PDF or LaTeX, Pandoc needs to process elements such as mathematical equations, tables, cross-references, bibliographies, and more. These elements require specialized handling and precise formatting, which LaTeX excels at.

### LateX package

```bash
sudo apt install texlive-base texlive-fonts-recommended texlive-latex-extra texlive-latex-recommended 
```

### Pandoc package
```bash
sudo apt update
sudo apt install pandoc
pandoc --version
```

## Usage

To use Pandoc to process Markdown, follow these steps:

Open a terminal on your system.
Navigate to the directory where your Markdown file is located using the cd command. For example, if your file is in the "Documents" directory, you can use the following command:

```bash
cd Documents
```
Once you're in the correct directory, you can use the Pandoc command-line interface to process the Markdown file. The basic syntax for converting a Markdown file to another format is as follows:

```bash
pandoc [options] input-file -o output-file

```

