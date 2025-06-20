%% -*- coding:utf-8 -*-
%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%
%% Compilation: lualatex biber lualatex
%% TeX Style Sheet: Zehui Guo, Elisabeth Eberle & Antonio Machicao y Priemer
%% HU-Letter with Bibliography 
%% 2024-04-18
%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[%
	a4paper, 
	foldmarks=true,
	foldmarks=blmTP,
	fromlogo=true,
	locfield=wide,
	refline=nodate, 
	firstfoot=false,
	pagenumber=headright
	]{scrlttr2}

\usepackage{graphicx}

%%%%% Text in German:
\usepackage[english,ngerman]{babel}

% use \selectlanguage in the document to change the language
% \selectlanguage{english}
% \iftoggle{german}{}{\selectlanguage{english}}

% Text in English:
%\usepackage[ngerman,english]{babel}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%           Toggles                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% See packages "ifthen" & "etoolbox" in "tex-packages" 
%% For definitions see "tex-toggles"
%% For activation see "localproperties"

\usepackage{etoolbox}  %% defined "toggles" in "tex-toggles"
	\newtoggle{german} %% 
	\newtoggle{letterA} %% two versions of the letter (e.g. PR & PA)


\usepackage{hyphenat}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%          Hyperref & URL                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage[
	bookmarksnumbered, %For numbered bookmarks in PDF
	hidelinks, %For links without colored borders
%	hyperfootnotes=false %If FNs takes you to the 1st page and not to the FN text
]{hyperref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%          Bibliography                        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% BibLaTeX
\usepackage[% 
	natbib=true, 
	%	style=langsci-unified,  %% file needed
	%	citestyle=langsci-authoryear-comp,  %% file needed
	style=unified,  %% file needed
	citestyle=unified,
	%	citestyle=authoryear-comp,
	%     style=nature, 
	useprefix = true, 
	maxnames=99,
	minnames=1,
	%	maxbibnames=99, 
	%	maxbibnames=1,
	%	minbibnames=1, 
	%	uniquename=false, 
	mincrossrefs=2, %prevents separate entry for the parent entry, before 2 daugther entries with crossref 
	%	maxcitenames=2, 
	isbn=false, doi=true, eprint=false, %url=true, 
	%	giveninits=true, % short first name
	%	autolang=hyphen, 
	backend=biber, 
	%	indexing=cite 
]{biblatex} 

%% BibLaTeX Options
\AtEveryBibitem{%
	\clearfield{note}%
	%	\clearfield{series}%
	%	\clearfield{number}%	
}

\DeclareFieldFormat{postnote}{#1}
\DeclareFieldFormat{multipostnote}{#1}

\defbibheading{letterbib}[\refname]{\noindent \large \textbf{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%          Settings of the page for LETTER               
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\usepackage{showframe}% zum Anzeigen der Seitenaufteilung
%\LoadLetterOption{visualize}% zum Anzeigen von Feldpositionen auf dem Briefbogen
%\showfields{location,address}


%\usepackage{lipsum, afterpage}%
\setlength{\textwidth}{160mm}%
\addtolength{\textheight}{5\baselineskip}
%\setlength{\footskip}{10mm}

\def\pshape#1{%
	\parshape #1 \pshapexiicm{#1} 0pt 16cm }

\def\pshapexiicm#1{%
	\ifnum#1>1 0pt 12,5cm \expandafter
	\pshapexiicm\expandafter{\the\numexpr#1-1\expandafter\relax\expandafter}\fi}



\usepackage{libertine}  % XeLaTeX + libertine + MnSymbol (math symbols) create problems
	\renewcommand\ttdefault{lmtt} 	% change typewriter font to lmodern (smaller than tt in libertine)mtt}


%%%%%%%%%%%%%%%%%%%%%%%
%%% Author's Metadata has to be defined in the letter

% \newcommand*\sender{Stefan Müller} % sender's name

% \newcommand*\degree{Prof. Dr.} % sender's degree

% \newcommand*\authortitle{\degree\ \sender } % sender: degree + name

% \newcommand*\mail{\href{mailto:St.Mueller@hu-berlin.de}{St.Mueller@hu-berlin.de}} % sender's e-mail

% \newcommand*\website{\href{https://hpsg.hu-berlin.de/~stefan/}{https://hpsg.hu-berlin.de/~stefan/}} % sender's website

% \newcommand*\officehour{Montag, 14:00–15:00}	% office hours

% \newcommand*\telf{$+$49\,30\,2093-9631}

% \setkomavar{signature}{
% 	\includegraphics[width=50mm]{Stefan-Mueller-1200dpi.pdf}\\ 
% 	\authortitle }

	

%%%%%%%%%%%%%%%%%%%%%%%
%%% University's Metadata

\newcommand*\unilong{Humboldt-Universität zu Berlin}	% long name of university

\newcommand*\unishort{HU}	% short name of university

\newcommand*\faculty{Sprach- und literaturwissenschaftliche Fakultät}	% name of faculty

\newcommand*\institute{Institut für deutsche Sprache und Linguistik}	% name of institute


%%%%%%%%%%%%%%%%%%%%%%%
%%% Address Metadata

\newcommand*\officebuilding{Seminargebäude am Hegelplatz}

\newcommand*\officestreet{Dorotheenstraße 24}

\newcommand*\officecity{Berlin}

\newcommand*\officepostalcode{10117}

\newcommand*\officeroom{3.345}


\newcommand*\unistreet{Unter den Linden 6}

\newcommand*\unipostalcode{10099}

\newcommand*\unicity{\officecity }
	

%%%%%%%%%%%%%%%%%%%%%%%
%%% Letter's Metadata

\setkomavar{date}{\today}
	\KOMAoptions{numericaldate=true}



\renewcommand{\pagemark}{
	{\usekomafont{pagenumber}{
		{\scriptsize \textbf{Seite:} \thepage}
		}
	}
}



%%%%%%%%%%%%%%%%%%%%%%%
%%%  RIGHT COLUMN ON PAGE 1 (Using metadata from above)

\setkomavar{fromemail}{\mail} % #MyP: used?


\setkomavar{location}{\begin{tabular}[t]{l@{}}
% Faculty
	{\footnotesize \textbf{Sprach- und}}\\[-1mm]
	{\footnotesize \textbf{literaturwissenschaftliche}}\\[-1mm]
	{\footnotesize \textbf{Fakultät}}\\[3mm]
% Institute
	{\footnotesize Institut für deutsche Sprache}\\[-1mm]
	{\footnotesize und Linguistik}\\[3mm]
	{\scriptsize Sprachwissenschaft des Deutschen,}\\[-1mm]
% Area
	{\scriptsize Syntax}\\[3mm]
% Author
	{\scriptsize \textbf{\authortitle}}\\[-1mm]
	{\scriptsize \mail }\\[-1mm]
	{\scriptsize \website }\\[8mm]
% Date
	{\scriptsize \textbf{Datum:}}\\[-1mm]
		{\scriptsize \usekomavar{date}}\\[37mm]
% Address post
	{\scriptsize \textbf{Postanschrift:}}\\[-1mm]
		{\scriptsize \unilong }\\[-1mm]
		{\scriptsize \unistreet }\\[-1mm]
		{\scriptsize \unipostalcode\ \unicity }\\[-1mm]
		{\scriptsize Telefon \telf }\\[20mm]
% Address office
	{\scriptsize \textbf{Sitz:}}\\[-1mm]
		{\scriptsize \officebuilding }\\[-1mm]
		{\scriptsize \officestreet }\\[-1mm]
		{\scriptsize \officepostalcode\ \officecity }\\[-1mm]
		{\scriptsize Raum \officeroom}\\[44,5mm]
% Consultation hours
	{\scriptsize \textbf{Sprechzeiten:}}\\[-1mm]
		{\scriptsize \officehour}\\[-1mm]
%% Bank account
%	{\scriptsize \textbf{Bankverbindung:}}\\[-1mm]
%		{\scriptsize Deutsche Bank PGK AG}\\[-1mm]
%		{\scriptsize BIC/SWIFT: DEUTDED110}\\[-1mm]
%		{\scriptsize IBAN: DE 95 1007 0848 0512 620601}
\end{tabular} }



%%%%%%%%%%%%%%%%%%%%%%%
%% Properties of document: 
%%%%%%%%%%%%%%%%%%%%%%%


%% Fold marks
\setplength{tfoldmarklength}{11mm}
\setplength{pfoldmarklength}{14mm}
\setplength{foldmarkthickness}{1pt}
\setplength{foldmarkhpos}{0mm}


\addtoplength{firstheadvpos}{-6mm}
\addtoplength{toaddrhpos}{6mm} % distance from Addressee to left margin


\setkomavar{fromlogo}{%
	\hspace{-6,8mm}
	\begin{minipage}[c]{0.7\linewidth}
		%			\centering
		%			\raggedright
		\raggedleft
		\includegraphics[width=130mm]{graphics/HU_Wortmarke_einzeilig_RGB.jpg}
	\end{minipage}
	\hspace{25mm}
	\begin{minipage}[c]{0.3\linewidth}
		\centering
		\includegraphics[width=50mm]{graphics/HU_Siegel_RGB.jpg}
	\end{minipage}
}
\setkomavar{firsthead}{\usekomavar{fromlogo}\hfill}


\addtoplength{toaddrvpos}{-16mm}
\setplength{refvpos}{9,5cm}
%\addtoplength{refhpos}{15mm}


\setplength{locvpos}{50mm}
\setplength{locwidth}{50mm}
%\setplength{refhpos}{6mm} % it doesn't work for left margin
\setplength{lochpos}{4mm} % right margin
\setplength{locheight}{22,2cm}