## cbmm-memo-cover

LaTeX cover template for CBMM Memo series 

## versions
---
##### v1: Porting the version using the .cls class file. 

Changes: Cleaner, easier to modify, with nicer fonts.

###### How to use: 
* clone or donwload the repository 
* modify `\title`, `\author`, `\authoraffil`, `\date`, `\memonumber`
* To include the generated cover.pdf 
    * Edit your memo .tex
        ```
        \usepackage{pdfpages} % in preample
        \includepdf{cover.pdf} % after \begin{document}
        \setcounter{page}{1}
        ```
    * (OR alternatively) provide the path to the main pdf of the memo in `memopdf` and uncommend line 38 of the .cls file, i.e.  `%\includepdf[pages=-]{\@nameuse{mempdf}}`

---
##### v0: [Outdated]: Attempt to copy CBMM MSWord memo template to tex. 

(_Use with caution - don't know LaTeX._) 

###### How-to-use: 
* clone this repository 
* search for every `%ATTN` note (they point to placeholder text for the article title, author, abstract, and body)
* replace those with your content.
