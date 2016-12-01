%%
%% fubrief.cls - LaTeX2e Briefvorlage welche das CD der Freien Universitaet realisiert.
%%

\NeedsTeXFormat{LaTeX2e}[2001/06/01]
\ProvidesClass{fubrief}[2006/03/13 LaTeX2e Vorlage fuer Briefe gemaess CD der Freien Universitaet Berlin]

\LoadClass[a4paper,11pt]{article}
\RequirePackage{ngerman}
\RequirePackage{graphicx}
\RequirePackage{ifthen}

\setlength{\topmargin}{-35mm}
\setlength{\textwidth}{147mm}
\setlength{\textheight}{250mm}
\setlength{\oddsidemargin}{-4mm}
\setlength{\headsep}{5cm}

\renewcommand{\ps@headings}{%
    \renewcommand{\@oddhead}{\hspace*{67mm}\begin{minipage}[t]{80mm}\vspace*{10mm}\FULogo\\ \end{minipage}}%
    \renewcommand{\@evenhead}{\@oddhead}%
    \renewcommand{\@oddfoot}{}%
    \renewcommand{\@evenfoot}{\@oddfoot}}

\renewcommand{\ps@plain}{%
    \renewcommand{\@oddhead}{}%
    \renewcommand{\@evenhead}{\@oddhead}%
    \renewcommand{\@oddfoot}{}%
    \renewcommand{\@evenfoot}{\@oddfoot}}

\renewcommand{\encodingdefault}{T1}
\renewcommand{\familydefault}{arial}
\renewcommand{\rmdefault}{arial}

\newcommand{\logofilePDF}{FULogo.pdf}
\newcommand{\logofileEPS}{FULogo.eps}

\DeclareOption{bw}{\renewcommand{\logofilePDF}{FULogoBW.pdf}\renewcommand{\logofileEPS}{FULogoBW.eps}}
\DeclareOption{logoallpages}{\renewcommand{\ps@plain}{%
    \renewcommand{\@oddhead}{\hspace*{67mm}\begin{minipage}[t]{80mm}\vspace*{10mm}\FULogo\\ \end{minipage}}%
    \renewcommand{\@evenhead}{\@oddhead}%
    \renewcommand{\@oddfoot}{}%
    \renewcommand{\@evenfoot}{\@oddfoot}}}
\ProcessOptions

\pagestyle{plain}

\ifthenelse{\pdfoutput = 1}{\newcommand{\FULogo}{\includegraphics[width=79.5mm]{\logofilePDF}}}{\newcommand{\FULogo}{\includegraphics[width=79.5mm]{\logofileEPS}}}

\newcommand{\nametext}{\hfill}
\newcommand{\strassetext}{\hfill}
\newcommand{\orttext}{\hfill}
\newcommand{\telefontext}{\hfill}
\newcommand{\telefaxtext}{\hfill}
\newcommand{\emailtext}{\hfill}
\newcommand{\httptext}{\hfill}
\newcommand{\meinzeichentext}{\hfill}
\newcommand{\bearbeitertext}{\hfill}
\newcommand{\datumtext}{\hfill}
\newcommand{\vermerktexta}{\hfill}
\newcommand{\vermerktextb}{\hfill}
\newcommand{\vermerktextc}{\hfill}
\newcommand{\adressetexta}{\hfill}
\newcommand{\adressetextb}{\hfill}
\newcommand{\adressetextc}{\hfill}
\newcommand{\adressetextd}{\hfill}
\newcommand{\adressetexte}{\hfill}
\newcommand{\adressetextf}{\hfill}
\newcommand{\fachbereichfenstertext}{\hfill}
\newcommand{\fachbereichtexta}{\hfill}
\newcommand{\fachbereichtextb}{\hfill}
\newcommand{\fachbereichtextc}{\hfill}
\newcommand{\fachbereichtextd}{\hfill}
\newcommand{\betrefftext}{\hfill}

\newcommand{\Name}[1]{\renewcommand{\nametext}{#1}}
\newcommand{\Strasse}[1]{\renewcommand{\strassetext}{#1}}
\newcommand{\Ort}[1]{\renewcommand{\orttext}{#1}}
\newcommand{\Telefon}[1]{\renewcommand{\telefontext}{#1}}
\newcommand{\Telefax}[1]{\renewcommand{\telefaxtext}{#1}}
\newcommand{\EMail}[1]{\renewcommand{\emailtext}{#1}}
\newcommand{\HTTP}[1]{\renewcommand{\httptext}{#1}}
\newcommand{\MeinZeichen}[1]{\renewcommand{\meinzeichentext}{#1}}
\newcommand{\BearbeiterIn}[1]{\renewcommand{\bearbeitertext}{#1}}
\newcommand{\Datum}[1]{\renewcommand{\datumtext}{#1}}
\newcommand{\VermerkA}[1]{\renewcommand{\vermerktexta}{#1}}
\newcommand{\VermerkB}[1]{\renewcommand{\vermerktextb}{#1}}
\newcommand{\VermerkC}[1]{\renewcommand{\vermerktextc}{#1}}
\newcommand{\AdresseA}[1]{\renewcommand{\adressetexta}{#1}}
\newcommand{\AdresseB}[1]{\renewcommand{\adressetextb}{#1}}
\newcommand{\AdresseC}[1]{\renewcommand{\adressetextc}{#1}}
\newcommand{\AdresseD}[1]{\renewcommand{\adressetextd}{#1}}
\newcommand{\AdresseE}[1]{\renewcommand{\adressetexte}{#1}}
\newcommand{\AdresseF}[1]{\renewcommand{\adressetextf}{#1}}
\newcommand{\FachbereichFenster}[1]{\renewcommand{\fachbereichfenstertext}{#1}}
\newcommand{\FachbereichA}[1]{\renewcommand{\fachbereichtexta}{#1}}
\newcommand{\FachbereichB}[1]{\renewcommand{\fachbereichtextb}{#1}}
\newcommand{\FachbereichC}[1]{\renewcommand{\fachbereichtextc}{#1}}
\newcommand{\FachbereichD}[1]{\renewcommand{\fachbereichtextd}{#1}}
\newcommand{\Betreff}[1]{\renewcommand{\betrefftext}{#1}}

\AtBeginDocument{
    \thispagestyle{headings}
    \vspace*{-2.0cm}
    \begin{minipage}[t]{20mm}
        \vspace*{0mm}
    \end{minipage}\\[4mm]
    \hspace*{133mm}
    \begin{minipage}[t]{100mm}
        \vspace*{-13mm}
        {\fontsize{9}{11pt}\selectfont \fachbereichtexta\\[-0,5ex]
        \fachbereichtextb\\[-0,5ex]
        \fachbereichtextc\\[-0.5ex]
        \fachbereichtextd}
    \end{minipage}
    \begin{minipage}[t]{100mm}
        \vspace*{1mm}
        {\fontsize{7}{8pt}\selectfont Freie Universit"at Berlin, \fachbereichfenstertext\\[-1,5ex]
        \strassetext, \orttext}
    \end{minipage}
    \hspace*{32.5mm}
    \begin{minipage}[t]{50mm}
        \vspace*{1.5mm}
        {\fontsize{9}{11pt}\selectfont \nametext \\[-0,5ex]
        \strassetext \\[-0,5ex]
        \orttext}
    \end{minipage}
    \newline
    \begin{minipage}[t]{80mm}
        \vspace*{-4mm}
        {\fontsize{10}{9pt}\selectfont
        \vermerktexta\\[-2.5pt]
        \vermerktextb\\[-2.5pt]
        \vermerktextc\\[-2.5pt]
        \adressetexta\\[-2.5pt]
        \adressetextb\\[-2.5pt]
        \adressetextc\\[-2.5pt]
        \adressetextd\\[-2.5pt]
        \adressetexte\\[-2.5pt]
        \adressetextf
        }
    \end{minipage}
    \hspace*{27mm}
    \begin{minipage}[t]{100mm}
        \vspace*{5.8mm}
        \fontsize{9}{11pt}\selectfont
        \begin{tabular}[t]{r l}
            Telefon \hspace*{-3.2mm} & \telefontext\\
            Fax \hspace*{-3.2mm} & \telefaxtext\\
            E-Mail \hspace*{-3.2mm} & \emailtext\\
            Internet \hspace*{-3.2mm} & \httptext\\
            \\[1mm]
            Bearb. Zeichen \hspace*{-3.2mm} & \meinzeichentext\\
            BearbeiterIn \hspace*{-3.2mm} & \bearbeitertext\\[4mm]
            & \datumtext
        \end{tabular}
    \end{minipage}\\[2ex]
    \\[2mm]
    {\fontsize{10}{13pt}\selectfont
    \textbf{\betrefftext}\\[1mm]
    }
    \begin{flushleft}
}

\AtEndDocument{
    \end{flushleft}
}

\endinput

