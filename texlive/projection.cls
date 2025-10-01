\LoadClass[aspectratio=1610,notheorems]{beamer}

\usepackage{xcolor}
\definecolor{ubcblue}{HTML}{002859}
\usecolortheme[named=ubcblue]{structure}
\useinnertheme{circles}
\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}

\usepackage{parskip}
\makeatletter
\def\thm@space@setup{\thm@preskip=\parskip\thm@postskip=0pt}
\makeatother

\usepackage{tcolorbox}
\tcbset{
    cell/.style={
        colback=white,
        colframe=white,
        size=minimal,
        boxrule=0pt,
        beforeafter skip balanced=8pt
    }
}
\newcounter{DEFINITIONCOUNT}
\newcounter{THEOREMCOUNT}
\newcommand{\CELL}[3][]{
    \begin{tcolorbox}[cell]
        \begin{block}{\strut\strut\textbf{#1}\if\relax\detokenize{#2}\relax\else\ ---\ #2\fi\strut\strut}
            #3
        \end{block}
    \end{tcolorbox}
}
\newcommand{\DEFINITION}[2][]{%
    \refstepcounter{DEFINITIONCOUNT}%
    \CELL[Definition \theDEFINITIONCOUNT]{#1}{#2}%
}
\newcommand{\THEOREM}[2][]{%
    \refstepcounter{THEOREMCOUNT}%
    \CELL[Theorem \theTHEOREMCOUNT]{#1}{#2}%
}
