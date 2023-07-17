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

### Standard usage
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
- Replace [options] with any additional options you want to specify for the conversion. For example, you can set the output format, specify a CSS file for styling, or include a table of contents.
- Replace input-file with the name of your Markdown file.
- Replace output-file with the desired name and extension for the converted output file.

For example, to convert a Markdown file named example.md to PDF, you can use the following command:

```bash
pandoc example.md -o example.pdf
```

### Reproduce the same output as in repo

```bash
pandoc -V geometry:margin=0.6in  example.md -o example.pdf --template=template.tex  --metadata title="Example" --metadata author="John Doe"
```

The commandline is for running the Pandoc command with various options and arguments. Let's break down the command and explain each part:

1. `pandoc`: This is the command to execute Pandoc, the document conversion tool.

2. `-V geometry:margin=0.6in`: The `-V` flag is used to pass variables to the template. In this case, it sets the `geometry` variable to `margin=0.6in`. This option adjusts the margin of the output document to 0.6 inches on all sides.

3. `example.md`: This is the input Markdown file you want to convert.

4. `-o example.pdf`: The `-o` flag specifies the output file name and format. In this case, it sets the output file name as `example.pdf`, indicating that you want the output to be in PDF format.

5. `--template=template.tex`: The `--template` option specifies the template file to be used during the conversion. Here, it specifies the `template.tex` file as the template for the conversion process. This template can include custom formatting and styling for the output document.

6. `--metadata title="Example" --metadata author="John Doe"`: The `--metadata` option is used to pass metadata values to the template. Here, it sets the `title` metadata to "Example" and the `author` metadata to "John Doe". These metadata values can be accessed in the template file and used for customization.

By combining these options and arguments, the Pandoc command will convert the input Markdown file (`example.md`) to a PDF file (`example.pdf`). It will use the specified template file (`template.tex`) and include the provided metadata values (`title` and `author`) in the output.

Remember to adjust the file names and metadata values as per your specific requirements.

