\LoadClass[twocolumn]{extarticle}

\usepackage{times}

\makeatletter
\renewcommand\normalsize{\@setfontsize\normalsize{6}{7}}
\normalsize
\makeatother

\usepackage[a4paper,columnsep=0.5cm,margin=0.5cm]{geometry}

\pagenumbering{gobble}

\usepackage{parskip}
\makeatletter
\def\thm@space@setup{\thm@preskip=0pt\thm@postskip=0pt}
\makeatother

\usepackage{algorithm,algorithmic,amsfonts,amssymb,bm,booktabs,cancel,caption,centernot,dsfont,graphicx,marvosym,mathtools,minted,nicefrac,physics,stackengine,subcaption,textcomp,tikz,verbatim,xcolor,xparse}
\usepackage[bb=boondox,cal=esstix,scr=boondox]{mathalpha}

\newcommand{\N}{\mathbb{N}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\argmin}{\operatorname*{argmin}}
\newcommand{\argmax}{\operatorname*{argmax}}

\newcommand{\cfig}[3][]{
    \begin{figure}[ht]
        \centering
        \begin{minipage}{\linewidth}
            \centering
            \includegraphics[width=#2\linewidth]{#3}
            \ifx&#1&
            \else
                \caption{#1}
            \fi
        \end{minipage}
    \end{figure}
}
