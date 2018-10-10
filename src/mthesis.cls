% Copyright (c) 2010 Michael Ummels <michael@ummels.de>
%
% Permission to use, copy, modify, and/or distribute this software for any
% purpose with or without fee is hereby granted, provided that the above
% copyright notice and this permission notice appear in all copies.
%
% THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
% WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
% MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
% ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
% WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
% ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
% OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

\ProvidesClass{mthesis}[2018/09/28 v1.7]
\LoadClass[11pt,fleqn]{extbook}

% Packages
\RequirePackage[draft]{fixme}
\RequirePackage{geometry}
\RequirePackage[hyphens]{url}
\RequirePackage[clearempty,pagestyles,newlinetospace]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{xcolor}
\RequirePackage{setspace}
\RequirePackage[pdfstartview={FitH},pdfborder={0 0 0},hyperindex=false]{hyperref}
\RequirePackage{graphicx}
\RequirePackage{caption}
% \RequirePackage{floatrow}
\RequirePackage{sidenotes}
\RequirePackage{marginfix}
% Typography
\RequirePackage[final]{microtype}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{bm}

\RequirePackage{mathspec}

\setmainfont[Ligatures=TeX]{Meta Serif Pro}
\setsansfont[Ligatures=TeX]{Meta Pro}
\newfontfamily{\chapterfamily}{Meta Pro Black}
\newfontfamily{\dingfamily}{Meta Dingbats}
\setmonofont{Source Code Pro}
\setmathsfont(Digits,Latin,Greek)[Numbers={Lining,Proportional}]{Meta Serif Pro}



% Tables
\renewcommand{\arraystretch}{1.5}


% Colors
\definecolor{dark}{rgb}{0.13, 0.13, 0.13}
\definecolor{medium}{rgb}{0.23, 0.27, 0.29}
\definecolor{light}{rgb}{0.23, 0.27, 0.29}

% Page layout
\geometry{
  paperwidth=210mm,
  paperheight=297mm,
  twoside,
  inner=14mm,
  width=136mm,
  headsep=14mm,
  marginparsep=4mm,
  marginparwidth=46mm,
  bottom=35mm
}

% Header/Footer
\newpagestyle{main}{
  \sethead[\small\sffamily\ifthechapter{\thechapter\enskip}{}\chaptertitle][][]%
    {}{}{\small\sffamily\ifthesection{\thesection\enskip}{}\sectiontitle}
  \setfoot*{}{}{\thepage}
}
\newpagestyle{bibliography}{
  \sethead[Bibliography][][]{}{}{Bibliography}
  \setfoot*{}{}{\thepage}
}
\renewpagestyle{plain}{
  \setfoot*{}{}{\thepage}
}
\pagestyle{main}

% Sectioning
\setcounter{secnumdepth}{1}

\newcommand{\periodafter}[1]{#1.}

\titleformat{\section}[hang]{\bfseries\Large}{\thesection}{.5em}{}
% \titlespacing{\section}{0pt}{2.5em}{1.5em}
\titleformat{\subsection}[hang]{\sffamily\bfseries}{\thesubsection}{.5em}{}
\titleformat{\subsubsection}[runin]{\normalfont\itshape}{\thesubsubsection}%
  {.5em}{\periodafter}

% \definecolor{chaptergrey}{rgb}{0.7,0.7,0.7}
\definecolor{chaptergrey}{rgb}{0.57, 0.64, 0.69}

\assignpagestyle{\chapter}{empty}
\titleformat{name=\chapter}[display]%
  {%
    \null\vspace{26mm}
    \begin{adjustwidth}{}{8mm}
    \raggedleft\chapterfamily
  }
  {%
    \tikz[remember picture,overlay] \node[inner sep=0pt] at (current page.center){\includegraphics[width=216mm,height=303mm]{cover/\thechapter.png}};
   {\color{white}\fontsize{96}{96}\selectfont\thechapter}}%
  {9mm}%
  {%
    \raggedleft\chapterfamily\color{white}\fontsize{35}{35}\selectfont%
  }%
  [\end{adjustwidth}\addtocontents{loa}{\protect\addvspace{10pt}}\newpage]

\titleformat{name=\chapter,numberless}[display]%
  {\normalfont\hfuzz=\maxdimen}%
  {}%
  {-1pc}%
  {%\ifodd\thepage\raggedleft\else\raggedright\fi%
   \raggedleft%
   \chapterfamily%
   \fontsize{35}{35}\selectfont}
\titlespacing*{\chapter}{0pt}{*7}{*9}

% Type
\newcommand{\tsc}[1]{\textsc{\MakeLowercase{#1}}}

% Table of Contents

\titlecontents{chapter}[1pc]%
  {\addvspace{2ex}\large\filright}%
  {\contentslabel[\thecontentslabel]{1pc}}{\hspace*{-1pc}}%
  {\nolinebreak\enskip\nolinebreak\textbullet\nolinebreak%
    \enskip\nolinebreak\thecontentspage}[]

\titlecontents{section}[2.4pc]{\filright}%
  {\contentslabel[\thecontentslabel]{1.4pc}}{\hspace*{-1.4pc}}%
  {\nolinebreak\enskip\nolinebreak\textbullet\nolinebreak%
    \enskip\nolinebreak\thecontentspage}[]
\setcounter{tocdepth}{1}

% Figures

\RequirePackage{subcaption}
\RequirePackage{changepage}

\newcommand{\rightjustified}{% right-to-left paragraph alignment
  \leftskip=0pt plus .5fil%
  \rightskip=0pt plus -.5fil%
  \parfillskip=0pt plus .5fil%
}
\DeclareCaptionJustification{rectoverso}{%
  \checkoddpage
  \ifevenpage \rightjustified \fi
}
\DeclareCaptionStyle{sidecaption}{font={color=medium,sf,small},labelfont=bf,labelsep=space,singlelinecheck=false}
\DeclareCaptionStyle{marginfigure}{font={color=medium,sf,small},labelfont=bf,labelsep=quad,singlelinecheck=false}
\DeclareCaptionStyle{margintable}{font={color=medium,sf,small},labelfont=bf,labelsep=quad,singlelinecheck=false}

\DeclareCaptionLabelFormat{subref}{\tsc{\textbf{#2}}}

\captionsetup{font={color=medium,sf,small},labelfont=bf,labelsep=quad,subrefformat=subref,singlelinecheck=false,skip=4mm}


% Bibliography
\RequirePackage[backend=bibtex,style=numeric]{biblatex}

\DeclareFieldFormat[article,book,unpublished,misc]{title}{\mkbibemph{#1}}

\DeclareCiteCommand{\mcite}{}{%
   \sidenote[\usebibmacro{cite}]{\color{medium}\footnotesize\sffamily\raggedright%
   \setunit{\addnbspace}
   \printnames{labelname}%
   \setunit{\labelnamepunct}
   \printfield{title} (\printfield{year})}%
}{}{}
