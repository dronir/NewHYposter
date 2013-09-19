\ProvidesClass{test1}[2013/09/18 test1 class (GK, MW)]
\NeedsTeXFormat{LaTeX2e}[1995/06/01]

\LoadClass[onecolumn]{article}

\RequirePackage{float}
\RequirePackage{multicol}


% Set up columns
\newcount\n@cols
\DeclareOption{twocolumn}{\n@cols=2}
\DeclareOption{threecolumn}{\n@cols=3}
\DeclareOption{fourcolumn}{\n@cols=4}

% Set up paper size (code from a0paper.cls)
\newcount\xkoord
\newcount\ykoord
\newcount\xscale
\newcount\yscale
\newif\ifportrait
\newif\ifaroll
\newif\ifazero
\newif\ifaone
\newif\ifatwo
\newif\ifathree


\DeclareOption{portrait}{
\portraittrue
}

\DeclareOption{roll36in}{\arolltrue}
\DeclareOption{a0paper}{\azerotrue\arollfalse}
\DeclareOption{a1paper}{\aonetrue\arollfalse}
\DeclareOption{a2paper}{\atwotrue\arollfalse}
\DeclareOption{a3paper}{\athreetrue\arollfalse}


% Unbalanced columns are the default behaviour
\DeclareOption{nobalance}{%
    \def\b@lancestart{\begin{multicols*}{\n@cols}}%
    \def\b@lanceend{\end{multicols*}}
}
% If for some reason the user wants balanced columns
\DeclareOption{balance}{%
    \def\b@lancestart{\begin{multicols}{\n@cols}}%
    \def\b@lanceend{\end{multicols}}
}

% Raise warning for unknown options
\DeclareOption*{\PackageWarning{test1}{Unknown Option \CurrentOption}}

% Set default options
\ExecuteOptions{threecolumn,nobalance,roll36in,portrait}

% Process the options given
\ProcessOptions\relax

\ifaroll
   \setlength{\paperwidth}{119cm}
   \setlength{\paperheight}{88cm}
   \setlength{\textwidth}{116cm}
   \setlength{\textheight}{88cm}
\else\ifazero
   \setlength{\paperwidth}{118.82cm}
   \setlength{\paperheight}{83.96cm}
   \setlength{\textwidth}{117.82cm}
   \setlength{\textheight}{82.96cm}
\else\ifaone
   \setlength{\paperwidth}{83.96cm}
   \setlength{\paperheight}{59.4cm}
   \setlength{\textwidth}{83.96cm}
   \setlength{\textheight}{58.4cm}
\else\ifatwo
   \setlength{\paperwidth}{59.4cm}
   \setlength{\paperheight}{41.98cm}
   \setlength{\textwidth}{58.4cm}
   \setlength{\textheight}{40.98cm}
\else\ifathree
   \setlength{\paperwidth}{41.98cm}
   \setlength{\paperheight}{29.7cm}
   \setlength{\textwidth}{40.98cm}
   \setlength{\textheight}{28.7cm}
\else\relax
\fi\fi\fi\fi\fi

\ifportrait
   \newdimen\tausch
   \setlength{\tausch}{\paperwidth}
   \setlength{\paperwidth}{\paperheight}
   \setlength{\paperheight}{\tausch}
   \setlength{\tausch}{\textwidth}
   \setlength{\textwidth}{\textheight}
   \setlength{\textheight}{\tausch}
\else\relax
\fi

\input{a0size.sty}
\renewcommand{\tiny}{\fontsize{12}{14}\selectfont}
\renewcommand{\scriptsize}{\fontsize{14.4}{18}\selectfont}   
\renewcommand{\footnotesize}{\fontsize{17.28}{22}\selectfont}
\renewcommand{\small}{\fontsize{20.74}{25}\selectfont}
\renewcommand{\normalsize}{\fontsize{24.88}{30}\selectfont}
\renewcommand{\large}{\fontsize{29.86}{37}\selectfont}
\renewcommand{\Large}{\fontsize{35.83}{45}\selectfont}
\renewcommand{\LARGE}{\fontsize{43}{54}\selectfont}
\renewcommand{\huge}{\fontsize{51.6}{64}\selectfont}
\renewcommand{\Huge}{\fontsize{61.92}{77}\selectfont}
\newcommand{\veryHuge}{\fontsize{74.3}{93}\selectfont}
\newcommand{\VeryHuge}{\fontsize{89.16}{112}\selectfont}
\newcommand{\VERYHuge}{\fontsize{107}{134}\selectfont}
\renewcommand{\section}{\@startsection {section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}%
  {2.3ex \@plus.2ex}%
  {\reset@font\Large\bfseries\sffamily}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\reset@font\large\bfseries\sffamily}}

\setlength\smallskipamount{8pt plus 2pt minus 2pt}
\setlength\medskipamount{16pt plus 4pt minus 4pt}
\setlength\bigskipamount{32pt plus 8pt minus 8pt}

\setlength\abovecaptionskip{25pt}
\setlength\belowcaptionskip{0pt}
\setlength\abovedisplayskip{25pt plus 6pt minus 15 pt}
\setlength\abovedisplayshortskip{0pt plus 6pt}
\setlength\belowdisplayshortskip{13pt plus 7pt minus 6pt}
\setlength\belowdisplayskip\abovedisplayskip

\RequirePackage[onecolumn,margin=5cm]{geometry}

\renewcommand{\maketitle}{\PackageWarning{test1}{The maketitle command is disabled.}}

% Set some details
\pagestyle{empty}
\setlength{\columnsep}{3cm}
\raggedright 

% Do stuff at start of document
\AtBeginDocument{\b@lancestart}

% Do stuff at end of document
\AtEndDocument{\b@lanceend}

\endinput
