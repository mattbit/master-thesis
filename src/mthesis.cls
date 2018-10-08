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

\RequirePackage[clearempty,pagestyles,newlinetospace]{titlesec}
\RequirePackage{titletoc}
% \RequirePackage[fleqn]{mathtools}
% \RequirePackage{enumitem}
% \RequirePackage{textcase}
% \RequirePackage{setspace}
% \RequirePackage{xspace}
\RequirePackage{xcolor}
% \RequirePackage{array}
% \RequirePackage{multirow}
% \RequirePackage[eqno]{tabfigures}
% \RequirePackage{index}
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
\newfontfamily{\chapterfamily}{Meta Serif Pro Extra Bold}

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
  width=140mm,
  headsep=14mm,
  marginparsep=4mm,
  marginparwidth=42mm,
  bottom=28mm
}

% Sidenotes

% Header/Footer
\newpagestyle{main}{
  \sethead[\small\sffamily\ifthechapter{\thechapter\enspace}{}\chaptertitle][][]%
    {}{}{\small\sffamily\ifthesection{\thesection\enspace}{}\sectiontitle}
  \setfoot*{}{}{\thepage}
}
% \newpagestyle{nosub}{
%   \sethead[\small\uppercase\sffamily\ifthechapter{\thechapter\enspace}{}\chaptertitle][][]%
%     {}{}{\small\sffamily\ifthechapter{\thechapter\enspace}{}\chaptertitle}
%   \setfoot*{}{}{\thepage}
% }
\renewpagestyle{plain}{
  \setfoot*{}{}{\thepage}
}
\pagestyle{main}

% Sectioning
\setcounter{secnumdepth}{1}

\newcommand{\periodafter}[1]{#1.}

\titleformat{\section}[hang]{\sffamily\bfseries\Large}{\thesection}{.5em}{}
% \titlespacing{\section}{0pt}{2.5em}{1.5em}
\titleformat{\subsection}[hang]{\sffamily\bfseries}{\thesubsection}{.5em}{}
\titleformat{\subsubsection}[runin]{\normalfont\itshape}{\thesubsubsection}%
  {.5em}{\periodafter}

% \definecolor{chaptergrey}{rgb}{0.7,0.7,0.7}
\definecolor{chaptergrey}{rgb}{0.57, 0.64, 0.69}

\titleformat{name=\chapter}[display]%
  {\normalfont\hfuzz=\maxdimen}%
  {\color{chaptergrey}%
   \raggedleft%
   \fontseries{bx}%
   \fontsize{96}{96}\selectfont%
   \setlength{\baselineskip}{\z@}%
   \edef\@tempa{\chaptertitlename}%
   \ifx\@tempa\chaptername\else%
     \begingroup%
     \fontseries{bx}%
     \fontsize{18}{18}\selectfont%
     \setlength{\baselineskip}{\z@}%
     \raisebox{25pt}{\chaptertitlename\enspace}%
     \endgroup%
   \fi%
   \thechapter}%
  {-1.5pc}%
  {%\ifodd\thepage\raggedleft\else\raggedright\fi%
   \raggedleft%
   \chapterfamily\fontshape{it}%
   \fontsize{24}{24}\selectfont}%
  [\addtocontents{loa}{\protect\addvspace{10pt}}]
\titleformat{name=\chapter,numberless}[display]%
  {\normalfont\hfuzz=\maxdimen}%
  {}%
  {-1pc}%
  {%\ifodd\thepage\raggedleft\else\raggedright\fi%
   \raggedleft%
   \fontseries{bx}%
   \fontsize{24}{24}\selectfont}
\titlespacing*{\chapter}{0pt}{*7}{*9}

% Type
\newcommand{\tsc}[1]{\textsc{\MakeLowercase{#1}}}

% Bibliography
% \newcommand{\mcite}[1]{\footcite{#1}}

% % Floats
%
% \renewcommand{\arraystretch}{\diss@spread}
% \renewcommand{\topfraction}{0.9}
% \renewcommand{\textfraction}{0.1}
%
% \setlength{\heavyrulewidth}{0.05em}
% \setlength{\lightrulewidth}{0.03em}
% \DeclareCaptionFont{spread}{\setstretch{\diss@spread}}
% \captionsetup{labelfont=bf,labelsep=period,textformat=period,font={small,spread}}
% \DeclareFloatVCode{toprule}{%
%   \hrule height\heavyrulewidth\vskip 1ex%
% }
% \DeclareFloatVCode{topprule}{%
%   \hrule height\heavyrulewidth\vskip 1.5ex%
% }
% \DeclareFloatVCode{midrule}{%
%   \vskip 1ex\hrule height\lightrulewidth\vskip 1ex%
% }
% \DeclareFloatVCode{endrule}{%
%   \vskip 1ex\hrule height\heavyrulewidth%
% }
% \captionsetup[ruled]{labelfont=bf,labelsep=period,textformat=period,font=spread}
% \DeclareNewFloatType{algorithm}{placement=tbp,name=Algorithm,fileext=loa,within=chapter}
% \contentsuse{algorithm}{loa}
% \newcommand{\listofalgorithms}{\listof{algorithm}{List of Algorithms}}
% \floatsetup[algorithm]{style=ruled,precode=toprule,midcode=midrule,postcode=endrule}
% %\floatsetup[figure]{precode=topprule,postcode=endrule}
% \floatsetup[table]{capposition=top}
%
% \newcommand{\keyw}[1]{\textbf{#1}}


% Table of Contents

\titlecontents{chapter}[1pc]%
  {\addvspace{2ex}\large\filright}%
  {\contentslabel[\thecontentslabel]{1pc}}{\hspace*{-1pc}}%
  {\nolinebreak\enskip\nolinebreak\textbullet\nolinebreak%
    \enspace\nolinebreak\thecontentspage}[]

\titlecontents{section}[2.4pc]{\filright}%
  {\contentslabel[\thecontentslabel]{1.4pc}}{\hspace*{-1.4pc}}%
  {\nolinebreak\enskip\nolinebreak\textbullet\nolinebreak%
    \enspace\nolinebreak\thecontentspage}[]
\setcounter{tocdepth}{1}

%
%
% % References
%
% \crefformat{equation}{#2(#1)#3}
% \Crefformat{equation}{Eq.~#2(#1)#3}
% \crefrangeformat{equation}{#3(#1)#4--#5(#2)#6}
% \Crefrangeformat{equation}{Eqs.~#3(#1)#4--#5(#2)#6}
% \crefmultiformat{equation}{#2(#1)#3}{\crefpairconjunction#2(#1)#3}%
%   {, #2(#1)#3}{\creflastconjunction#2(#1)#3}
% \Crefmultiformat{equation}{Eqs.~#2(#1)#3}{\crefpairconjunction#2(#1)#3}%
%   {, #2(#1)#3}{\creflastconjunction#2(#1)#3}
% \crefrangemultiformat{equation}{#3(#1)#4--#5(#2)#6}%
%   {\crefpairconjunction#3(#1)#4--#5(#2)#6}{, #3(#1)#4--#5(#2)#6}%
%   {\creflastconjunction#3(#1)#4--#5(#2)#6}
% \Crefrangemultiformat{equation}{Eqs.~#3(#1)#4--#5(#2)#6}%
%   {\crefpairconjunction#3(#1)#4--#5(#2)#6}{, #3(#1)#4--#5(#2)#6}%
%   {\creflastconjunction#3(#1)#4--#5(#2)#6}
%
% \crefname{algorithm}{Algorithm}{Algorithms}
% \crefname{figure}{Figure}{Figures}
%
%
% % Theorems
%
% % Styles
% \newtheoremstyle{definition}%
%   {\item[\hskip\labelsep\normalfont\bfseries ##1~##2.]}%
%   {\item[\hskip\labelsep\normalfont\bfseries ##1~##2\normalfont\ (##3).]}
% \newtheoremstyle{nonumberdefinition}%
%   {\item[\hskip\labelsep\normalfont\bfseries ##1.]}%
%   {\item[\hskip\labelsep\normalfont\bfseries ##1\normalfont\ (##3).]}
% \newtheoremstyle{remark}%
%   {\item[\hskip\labelsep\normalfont\itshape ##1~##2.]}%
%   {\item[\hskip\labelsep\normalfont\itshape ##1~##2\/\normalfont\ (##3).]}
% \newtheoremstyle{nonumberremark}%
%   {\item[\hskip\labelsep\normalfont\itshape ##1.]}%
%   {\item[\hskip\labelsep\normalfont\itshape ##1\/\normalfont\ (##3).]}
%
% % Declarations
% \theorembodyfont{\normalfont}
% \theoremstyle{definition}
% \newtheorem{definition}{Definition}[chapter]
% \renewtheorem*{definition*}{Definition}
% \crefname{definition}{Definition}{Definitions}
% \newtheorem{proposition}[definition]{Proposition}
% \renewtheorem*{proposition*}{Proposition}
% \crefname{proposition}{Proposition}{Propositions}
% \newtheorem{lemma}[definition]{Lemma}
% \renewtheorem*{lemma*}{Lemma}
% \crefname{lemma}{Lemma}{Lemmas}
% \newtheorem{theorem}[definition]{Theorem}
% \renewtheorem*{theorem*}{Theorem}
% \crefname{theorem}{Theorem}{Theorems}
% \newtheorem{corollary}[definition]{Corollary}
% \renewtheorem*{corollary*}{Corollary}
% \crefname{corollary}{Corollary}{Corollaries}
% \newtheorem{example}[definition]{Example}
% \renewtheorem*{example*}{Example}
% \crefname{example}{Example}{Examples}
% \newtheorem{problem}[definition]{Problem}
% \renewtheorem*{problem*}{Problem}
% \crefname{problem}{Problem}{Problems}
% \theoremstyle{nonumberremark}
% \newtheorem{remark}{Remark}
% \newtheorem{claim}{Claim}
% \newtheorem{proof}{Proof}
%
% % QED symbol
% \if@fedra
%   \renewcommand{\qedsymbol}{\ding{108}}
% \else
%   \renewcommand{\qedsymbol}{$\square$}
% \fi
% \newcommand{\mathqed}{}
% \DeclareRobustCommand{\qed}{%
%   \ifmmode \mathqed
%   \else
%     \leavevmode\unskip\penalty9999 \hbox{}\nobreak\hfill
%     \quad\hbox{\qedsymbol}%
%   \fi
% }
%
%
% % Lists
%
% \setlist{leftmargin=\diss@indent,labelsep=3pt,topsep=\parsep,
%   parsep=\parskip,itemsep=\parskip}%
%
% \setenumerate{label={\figureversion{tab}\arabic*.},ref=\arabic*}
% %\setenumerate{label={\openbullet{\arabic*}},ref=\arabic*}
%
% \if@fedra
%   \renewcommand{\labelitemi}{\mydiss@diamond} % Diamond
% \fi
% \renewcommand{\labelitemii}{--}
% \renewcommand{\labelitemiii}{--}
% \renewcommand{\labelitemiv}{--}
%
%
% % Quotes
%
% \renewenvironment{quote}{%
%   \begin{list}{}{%
%     \setlength\leftmargin{\diss@indent}%
%     \setlength\rightmargin{\diss@indent}%
%     \setlength\parsep{\parskip}%
%     \setlength\itemsep{0pt}%
%   }%
%   \item%
% }{\end{list}}
%
% \renewenvironment{quotation}{%
% \begin{list}{}{%
%     \setlength\leftmargin{\diss@indent}%
%     \setlength\rightmargin{\diss@indent}%
%     \setlength\parsep{\parskip}%
%     \setlength\itemsep{0pt}%
%   }%
%   \item%
% }{\end{list}}
%
%
% % Bibliography
%
% \setcitestyle{aysep={}}
% \newcommand\mcitees[2][]{\mciteep[see][#1]{#2}}
% \setlength{\bibhang}{\diss@indent}
%
%
% % Indexing
%
% \newindex{default}{idx}{ind}{Index}
% \newindex{symbols}{sdx}{snd}{Notation}
%
% \newcommand{\symb}[2][]{\index[symbols]{#2}\@ifempty{#1}{}{\index[symbols]{#2|desc{#1}}}}
%
% \newcommand{\idxspace}[1]%
%  {\let\next#1\ifx#1\hyperpage\nobreak\enspace\nobreak\else, \fi\next}
%
% \newcommand{\seealso}[2]{\emph{see also} #1}
%
% \renewenvironment{theindex}{%
%   \edef\indexname{\the\@nameuse{idxtitle@\@indextype}}%
%   \setlength{\columnseprule}{0pt}%
%   \setlength{\columnsep}{2em}%
%   \twocolumn[\@makeschapterhead{\indexname}]%
%   \@mkboth{\indexname}{\indexname}%
%   \setlength{\parindent}{0pt}%
%   \thispagestyle{plain}%
%   \let\item\@idxitem%
%   \begingroup%
%   \small%
%   \raggedright%
% }{%
%   \endgroup%
%   \onecolumn%
% }
%
% \newenvironment{nomencl}[1]{%
%   \begin{list}{}{%
%     \renewcommand\makelabel[1]{##1\hfil}%
%     \settowidth\labelwidth{\makelabel{#1}}%
%     \setlength\labelsep{1em}%
%     \setlength\leftmargin{\labelwidth}%
%     \addtolength\leftmargin{\labelsep}%
%     \setlength\rightmargin{0pt}%
%     \setlength\parsep{\parskip}%
%     \setlength\itemsep{2pt minus 1pt}%
%   }%
% }{\end{list}}
%
% \newenvironment{thesymbols}{%
%   \edef\indexname{\the\@nameuse{idxtitle@\@indextype}}%
%   \@makeschapterhead{\indexname}%
%   \@mkboth{\indexname}{\indexname}%
%   \setlength{\parindent}{0pt}%
%   \thispagestyle{plain}%
%   \emph{Note:} See referenced pages for formal definitions.
%   \par%
%   \begingroup%
%   \raggedright
%   \begin{nomencl}{9999999999}
% }{%
%   \end{nomencl}%
%   \endgroup%
% }
%
% \renewcommand{\@idxitem}{\par\hangindent2em}
% \renewcommand{\subitem}{\par\hangindent2em\hspace*{1em}}
% \renewcommand{\subsubitem}{\par\hangindent2em\hspace*{1.5em}}
%
%
% % Math declarations
%
% \DeclareMathOperator{\Prob}{Pr}
% \let\Pr\Prob
% \let\lim\undefined
% \DeclareMathOperator{\lim}{lim}
% \let\liminf\undefined
% \DeclareMathOperator{\liminf}{lim\,inf}
% \let\limsup\undefined
% \DeclareMathOperator{\limsup}{lim\,sup}
%
% \let\origphi\phi
% \let\phi\varphi
% \let\origtheta\theta
% \let\theta\vartheta
% \let\origepsilon\epsilon
% \let\epsilon\varepsilon
% \let\origupepsilon\upepsilon
% \let\upepsilon\upvarepsilon
%
% \newcommand{\restrict}{\upharpoonright}
% \newcommand{\overbar}[1]{\mkern 1mu\overline{\mkern-1mu#1\mkern-1mu}\mkern 1mu}
% \renewcommand{\vec}[1]{\overbar{#1}}
% \renewcommand{\tilde}[1]{\widetilde{#1}}
% \renewcommand{\hat}[1]{\widehat{#1}}
% \renewcommand{\div}{\mathbin{/}}
%
% \newcommand{\lso}{\rightarrow}
% \newcommand{\liff}{\leftrightarrow}
% \newcommand{\Land}{\bigwedge}
% \newcommand{\Lor}{\bigvee}
%
% \newcommand{\abs}[1]{\lvert#1\rvert}
%
% \DeclareMathOperator{\Oh}{O}
% \DeclareMathOperator{\oh}{o}
%
% \newcommand{\infer}[2]{#1.\,$\Rightarrow$\,#2.}
% %\newcommand{\infer}[2]{\raisebox{-0.15ex}{\openbullet{#1}}\,$\Rightarrow$\,%
% %  \raisebox{-0.15ex}{\openbullet{#2}}}
%
% \let\smallfrac\@undefined
% \newcommand{\smallfrac}[2]{\ensuremath{\frac{#1}{#2}}}
%
%
% % Math abreviations
%
% \newcommand{\@abbrev}[3]{
%   \def\c@a@def##1{
%       \if ##1.
%         \relax
%       \else
%         \@ifdefinable{\@nameuse{#1##1}}{\@namedef{#1##1}{#2##1}}
%         \expandafter\c@a@def
%       \fi
%     }
%   \c@a@def #3.
% }
% \@abbrev{bb}{\mathbb}{ABCDEFGHIJKLMNOPQRSTUVWXYZ}
% \@abbrev{bf}{\mathbf}{ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz}
% \@abbrev{bit}{\boldsymbol}{ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz}
% \@abbrev{cal}{\mathcal}{ABCDEFGHIJKLMNOPQRSTUVWXYZ}
% \@abbrev{frak}{\mathfrak}{ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz}
% \@abbrev{rm}{\mathrm}{ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz}
% \@abbrev{scr}{\mathscr}{ABCDEFGHIJKLMNOPQRSTUVWXYZ}
% \@abbrev{sf}{\mathsf}{ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz}
%
%
% % Complexity classes
%
% \newcommand{\LogSpace}{\text{\textsc{Logspace}}\xspace}
% \newcommand{\NLogSpace}{\text{\textsc{NLogspace}}\xspace}
% \newcommand{\PTime}{\text{\textrm{P}}\xspace}
% \newcommand{\FPTime}{\text{\textrm{FP}}\xspace}
% \newcommand{\NP}{\text{\textrm{NP}}\xspace}
% \newcommand{\coNP}{\text{\textrm{coNP}}\xspace}
% \newcommand{\FNP}{\text{\textrm{FNP}}\xspace}
% \newcommand{\TFNP}{\text{\textrm{TFNP}}\xspace}
% \newcommand{\UP}{\text{\textrm{UP}}\xspace}
% \newcommand{\coUP}{\text{\textrm{coUP}}\xspace}
% \newcommand{\DP}{\text{\textrm{DP}}\xspace}
% \newcommand{\coDP}{\text{\textrm{coDP}}\xspace}
% \newcommand{\BH}{\text{\textrm{BH}}\xspace}
% \newcommand{\PNP}{\ensuremath{\PTime^\NP}\xspace}
% \newcommand{\PNPlog}{\ensuremath{\PTime^{\NP[\log]}}\xspace}
% \newcommand{\DeltaP}[1]{\ensuremath{\upDelta^\text{P}_{#1}}\xspace}
% \newcommand{\SigmaP}[1]{\ensuremath{\upSigma^\text{P}_{#1}}\xspace}
% \newcommand{\PiP}[1]{\ensuremath{\upPi^\text{P}_{#1}}\xspace}
% \newcommand{\PH}{\text{\textrm{PH}}\xspace}
% \newcommand{\PSpace}{\text{\textsc{Pspace}}\xspace}
% \newcommand{\NPSpace}{\text{\textsc{NPspace}}\xspace}
% \newcommand{\ExpTime}{\text{\textsc{Exptime}}\xspace}
% \newcommand{\NExpTime}{\text{\textsc{NExptime}}\xspace}
% \newcommand{\ExpSpace}{\text{\textsc{Expspace}}\xspace}
%
%
% % Tikz stuff
%
% \usetikzlibrary{arrows}
% \usetikzlibrary{shapes}
% \tikzset{every picture/.style={>=stealth,bend angle=20}}
% \tikzset{every label/.style={font=\small}}
% \tikzset{action/.style={font=\footnotesize}}
% \tikzset{every node/.style={font=\small}}
% \tikzset{play/.style={circle,draw,minimum size=#1}}
% \tikzset{play/.default=0.7cm}
% \tikzset{oplay/.style={ellipse,draw,minimum size=#1}}
% \tikzset{oplay/.default=0.7cm}
% \tikzset{prob/.style={diamond,draw,minimum size=#1}}
% \tikzset{prob/.default=0.75cm}
% \tikzset{end/.style={rectangle,draw,minimum size=#1}}
% \tikzset{end/.default=0.6cm}
%
%
% % Abbreviations
%
% \newcommand{\cf}{cf.\@\xspace}
% \newcommand{\ea}{\& al.\@\xspace}
% \newcommand{\eg}{e.g.\@\xspace}
% \newcommand{\etc}{etc.\@\xspace}
% \renewcommand{\iff}{if and only if\xspace}
% \newcommand{\ie}{i.e.\@\xspace}
% \newcommand{\wrt}{with respect to\xspace}
% \newcommand{\wlg}{without loss of generality\xspace}
% \newcommand{\Wlg}{Without loss of generality\xspace}
%
% \endinput


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


% Foot note
% \renewcommand{\footnote}[1]{\sidenote{\color{medium}\footnotesize\sffamily#1}}

% %footnotemark to sans serif
% \long\def\@makefnmark{%
%     \hbox {\@textsuperscript {\sffamily\@thefnmark}}
%     }
