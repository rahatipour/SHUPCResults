
%%
%%  This is file `yazd-thesis.cls',
%%   __________________________________
%%   Author: Vahid Damanafshan
%%   http://www.damanafshan.ir
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\def\yazd-thesisversion{0.1}
\ProvidesClass{yazd-thesis}
              [2015/01/22 v\yazd-thesisversion\space A template for the Yazd University]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,11pt]{book}
%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{calc}
\RequirePackage[top=3cm, bottom=2.5cm, right=2.5cm, left=4cm]{geometry}
\RequirePackage[]{acronym}
\RequirePackage[]{graphicx}
\graphicspath{{figures/}}
\RequirePackage{array}
\newcolumntype{C}[1]{>{\raggedleft\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}
\newcolumntype{M}[1]{>{\raggedleft\centering\arraybackslash}m{#1}}
\RequirePackage{multicol} 
\RequirePackage{fancyhdr}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{zref-perpage}
\zmakeperpage{footnote}
\RequirePackage{makeidx}
\makeindex
\RequirePackage[]{xcolor}
\RequirePackage[]{hyperref}







%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\mychapter}[1]{%
\phantomsection%
\addcontentsline{toc}{chapter}{#1}\chapter*{#1}\markboth{#1}{#1}%
}







%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhf{} 
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \if@RTL\raggedleft\else\raggedright\fi \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
      \fi
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
    \thispagestyle{empty}
    \newpage
  }}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \if@RTL\raggedleft\else\raggedright\fi
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
    \thispagestyle{empty}
%%    \newpage
  }}  
  \flushbottom
}


\setlength{\parindent}{1cm}
\setlength{\parskip}{0pt}

\setlength{\footskip}{
\paperheight   -(1in+\voffset+\topmargin+\headheight+\headsep+\textheight)  -1cm
}

\makeatletter
\renewcommand\section{\@startsection{section}{1}{\z@}%
                                   {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {1cm \@plus0ex}%
                                   {\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                    {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {1cm \@plus0ex}%
                                     {\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {1cm \@plus0ex}%
                                     {\normalfont\normalsize\bfseries}}  


\def\bflabel#1{{\textsf{#1}\hfill}}
\renewcommand*\@verridelabel[1]{%
  \@bsphack
  \label{#1}%
  \protected@write\@auxout{}{\string\undonewlabel{#1}}%
  \@overriddenmessage rs{#1}%
  \@esphack
}%
\renewcommand*{\@acf}[1]{%
      \ifAC@starred\else\AC@logged{#1}\fi%
       \acffont{%
          \AC@placelabel{#1}\hskip\z@%\AC@acl{#1}%
          \nolinebreak[3]%
          \acfsfont{\acsfont{\AC@acs{#1}}}%
        }}
 \makeatother
 
\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\vspace*{\fill}
\begin{center}
%این صفحه، عمداً خالی گذاشته شده است.
\end{center}
\vspace{\fill}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother


\makeatletter
\let\origprintindex\printindex
\renewcommand*{\printindex}{%
\cleardoublepage
  \fancypagestyle{plain}{%
    \fancyhf{}%
    \renewcommand{\headrulewidth}{0pt}%
    \renewcommand{\footrulewidth}{0pt}%
  }%
  \tolerance=10000
  \origprintindex
}
\makeatother
%% 
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%%  by Vahid Damanafshan.
%% 
%% 
%% 
%% 
%%
%% End of file `yazd-thesis.cls'.
