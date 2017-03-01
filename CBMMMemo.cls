%============================================================================
% This class produces a cover page for a CBMM memos.  
%
% For an example how to use this class see and modify "cover.tex" in this dir.
%
% This class requires LaTeX2e and pdflatex.
%
% Author: Maximilian Nickel <mnick@mit.edu>
% Modifications: Georgios Evangelopoulos <gevang@mit.edu>
%
% Parts are adapted from a book title page template by Peter Wilson (herries.press@earthlink.net)
% License: CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%=============================================================================

% Require modern LaTeX
\NeedsTeXFormat{LaTeX2e}
% Define package
\ProvidesClass{CBMMMemo}[2017/1/03 Class for CBMM Memos]

\LoadClass[%
	letterpaper
]{article}

% \RequirePackage[svgnames]{xcolor} % Required to specify font color
\RequirePackage{graphicx}
\RequirePackage[margin=0.8in]{geometry}
% \RequirePackage[margin=0.8in,top=12mm]{geometry}
\RequirePackage{pdfpages}

%% ================= Commands ===================================================

\newcommand{\makememo}{%
  \begin{document}
    \maketitlepage%
    %%!!! Un-comment to include pdf after title page 
    % \includepdf[pages=-]{\@nameuse{mempdf}}%
  \end{document}
}

% Memo number and pdf of main text
\newcommand{\memonumber}[1]{\@namedef{memonr}{#1}}
\newcommand{\memopdf}[1]{\@namedef{mempdf}{#1}}
% Author affiliation 
\newcommand{\authoraffil}[1]{\@namedef{affil}{#1}}

\newsavebox{\abstractbox}
\renewenvironment{abstract}
  {\begin{lrbox}{0}\begin{minipage}{\textwidth}
   \begin{center}\textsf{\textbf{\large{Abstract}}}\end{center}\quotation\sffamily}
  {\endquotation\end{minipage}\end{lrbox}%
   \global\setbox\abstractbox=\box0}

%% ==================Lengths======================================================

\newlength{\drop} % Generating specific amount of whitespace
\drop=0.05\textheight % Define to 5% of total text height (?)


%% ================= Memo page ===================================================

\newcommand{\maketitlepage}{\begin{titlepage} % Command for including the title page 

\begin{center}
    % \includegraphics[width=0.79\textwidth]{cbmm.jpeg}\\
    \includegraphics[scale=0.4]{cbmm.png}
\end{center}

% \textcolor{CornflowerBlue}{\rule{\textwidth}{3 pt}}\par % Thick horizontal line
\vspace{2pt}
\vspace{-\baselineskip} % Whitespace between lines

\noindent\rule{\textwidth}{0.4pt}% Thin horizontal line

\vspace{\drop} % Whitespace between the top lines and title
\textbf{\textsf{\large{CBMM Memo No. \@nameuse{memonr}}}} \hfill \textsf{\textbf{\large{\@date}}}

\vspace{\drop}

\begin{center}
    \textbf{\textsf{\huge{\@title}}}\\
    \vspace{0.4\drop}
    % textsf{\large{by}}\\
    \vspace{0.4\drop}
    \textbf{\textsf{\large{\@author}}}\\
    \vspace{0.1\drop}
    \textsf{\@nameuse{affil}}               
\end{center}

\vspace{\drop}

\begin{center}
  \begin{minipage}{.66\textwidth}
    \box\abstractbox
  \end{minipage}
\end{center}

\vspace{\fill}

% \textcolor{CornflowerBlue}{\rule{\textwidth}{2 pt}}\par % Thick horizontal line
\noindent\rule{\textwidth}{0.4pt}% Thin horizontal line

\begin{center}
\begin{minipage}{.15\linewidth}
    \includegraphics[scale=0.1]{nsf1.pdf}
\end{minipage}
\begin{minipage}{.80\linewidth}
    \textbf{\textsf{\large{This material is based upon work supported by the Center for Brains, Minds and Machines (CBMM), funded by NSF STC award CCF-1231216.}}}   
\end{minipage}
\end{center}

\end{titlepage}}

%% ==========================================================================

% Nice fonts
\RequirePackage{ifluatex}
\ifluatex
	\RequirePackage[T1]{fontenc}
	\RequirePackage[libertine]{newtxmath}
	\RequirePackage[no-math,quiet]{fontspec}
	\RequirePackage{libertine}
	\RequirePackage{fontaxes}
\else
	\RequirePackage[utf8]{inputenc}
	\RequirePackage[T1]{fontenc}
	\RequirePackage{times}
\fi
