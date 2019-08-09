\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2019/08/03 Modern CV class]
\RequirePackage{titlesec}
\RequirePackage{tikz}

\titleformat{\section}[frame]
{\LARGE}
{}{0em}
{\filcenter\bfseries\lowercase}

\titleformat{\subsection}
{\bfseries\large}
{\hspace{-0.25in}$\bullet$ }{0em}
{}

\titleformat{\subsubsection}[runin]
{\bfseries}
{}{0em}
{}[ --- ]

\titlespacing{\subsection}
{0em}{0.25em}{0.25em}

\titlespacing{\subsubsection}
{0em}{0.25em}{0.3em}

\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
        \item #2
        \item #3
        \end{itemize}
}

\newcommand{\taskitems}[3]{%
    \begin{description}[style=multiline,leftmargin=4cm]
        \item #1
        \item #2
        \item #3
        \end{description}%
}

\newcommand{\datedsection}[2]{%
    \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
    \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\name}[1]{%
    \centerline{\bfseries\huge{#1}}
    \vspace{0.5em}

}

\newcommand\contact[5]{%
    \centerline{%
        \makebox[0pt][c]{%
#1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
            \ #4 \ \ #5%
        }%
    }%
}

\newcommand\resume[2]{%
    \ifnum#1>#2
        $#1 > #2$
        \else
        \ifnum#1<0
        $#1 < 0$
        \else
        \ifnum#2<0
        $#2 < 0$
        \else
        \tikz{%
            \ifx#20
                \else
                \foreach \i in {1,...,#2} {
                    \filldraw[black!20] (\i ex,0) circle (0.4ex);
                };
            \fi
                \ifx#10
                \else
                \foreach \i in {1,...,#1} {
                    \filldraw[black] (\i ex,0) circle (0.4ex);
                };
            \fi
        }
    \fi
        \fi
        \fi
}

