\ProvidesClass{test1}[2013/09/18 test1 class]
\NeedsTeXFormat{LaTeX2e}[1995/06/01]

\LoadClass[onecolumn]{article}

\RequirePackage{float}
\RequirePackage{multicol}
\RequirePackage{cmbright}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{magaz}
\RequirePackage{hyphenat}
%\RequirePackage{setspace}


% Define colour schemes
\definecolor{black}{RGB}{0, 0, 0}  %  title grey
\definecolor{grey55}{RGB}{140, 140, 140}  %  title grey
\definecolor{Mat}{RGB}{252, 163, 17}  %  matemaattis-luonnontieteellinen
\definecolor{Hum}{RGB}{58, 111, 196}  %  humanistinen
\definecolor{Teo}{RGB}{146, 88, 200}  %  teologinen
\definecolor{Oik}{RGB}{140, 0, 50}  %  oikis
\definecolor{Med}{RGB}{0, 163, 154}  %  lääkis
\definecolor{Val}{RGB}{229, 5, 58}  %  valtsika
\definecolor{Maa}{RGB}{0, 176, 140}  %  lehmä- ja mehtätieteellinen
\definecolor{Ell}{RGB}{0, 158, 96}  %  eläinlääkis
\definecolor{Bio}{RGB}{91, 191, 33}  %  bio- ja ympäristö
\definecolor{Far}{RGB}{0, 189, 157}  %  farmasia
\definecolor{Kay}{RGB}{252, 209, 22}  %  käyttis
\definecolor{Soc}{RGB}{230, 51, 117}  %  sockom
\definecolor{Kie}{RGB}{233, 29, 85}  %  kielikeskus
\definecolor{Koe}{RGB}{70, 148, 157}  %  koe-eläin
\definecolor{Avo}{RGB}{237, 160, 79}  %  avoin
\definecolor{Ale}{RGB}{37, 110, 199}  %  aleksanteri-instituutti
\definecolor{Biot}{RGB}{155, 111, 168}  %  biotiede-instituutti
\definecolor{Neu}{RGB}{147, 149, 179}  %  neurotiedeinstituutti
\definecolor{Pal}{RGB}{255, 204, 73}  %  palmenia
\definecolor{Kol}{RGB}{227, 147, 4}  %  tutkijakollegium
\definecolor{Rur}{RGB}{142, 172, 125}  %  ruralia
\definecolor{Atk}{RGB}{21, 190, 240}  %  atk-osasto
\definecolor{Til}{RGB}{94, 160, 63}  %  tilakeskus
\definecolor{Kir}{RGB}{163, 175, 7}  %  kirjasto

% Set up columns
\newcount\n@cols
\DeclareOption{twocolumn}{\n@cols=2}
\DeclareOption{threecolumn}{\n@cols=3}
\DeclareOption{fourcolumn}{\n@cols=4}

\newcommand{\tdknimi}{}
\newcommand{\tdknamn}{}
\newcommand{\tdkname}{}
\newcommand{\flame}{}

\DeclareOption{ml}{
    \colorlet{TDK}{Mat}
    \renewcommand{\tdknimi}{MATEMAATTIS-LUONNONTIETEELLINEN TIEDEKUNTA}
    \renewcommand{\tdknamn}{MATEMATISK-NATURVETENSKAPLIGA FAKULTETEN}
    \renewcommand{\tdkname}{FACULTY OF SCIENCE}
    \renewcommand{\flame}{flames/flame_mat.pdf}
}

\DeclareOption{hum}{
    \colorlet{TDK}{Hum}
    \renewcommand{\tdknimi}{HUMANISTINEN TIEDEKUNTA}
    \renewcommand{\tdknamn}{HUMANISTISKA FAKULTETEN}
    \renewcommand{\tdkname}{FACULTY OF ARTS}
    \renewcommand{\flame}{flames/flame_hum.pdf}
}

\DeclareOption{teo}{
    \colorlet{TDK}{Teo}
    \renewcommand{\tdknimi}{TEOLOGINEN TIEDEKUNTA}
    \renewcommand{\tdknamn}{TEOLOGISKA FAKULTETEN}
    \renewcommand{\tdkname}{FACULTY OF THEOLOGY}
    \renewcommand{\flame}{flames/flame_teo.pdf}
}

\DeclareOption{oik}{
    \colorlet{TDK}{Oik}
    \renewcommand{\tdknimi}{OIKEUSTIETEELLINEN TIEDEKUNTA}
    \renewcommand{\tdknamn}{JURIDISKA FAKULTETEN}
    \renewcommand{\tdkname}{FACULTY OF LAW}
    \renewcommand{\flame}{flames/flame_oik.pdf}
}

\DeclareOption{med}{
    \colorlet{TDK}{Med}
    \renewcommand{\tdknimi}{L\"A\"AKETIETEELLINEN TIEDEKUNTA}
    \renewcommand{\tdknamn}{MEDICINSKA FAKULTETEN}
    \renewcommand{\tdkname}{FACULTY OF MEDICINE}
    \renewcommand{\flame}{flames/flame_laa.pdf}
}

\DeclareOption{val}{
    \colorlet{TDK}{Val}
    \renewcommand{\tdknimi}{VALTIOTIETEELLINEN TIEDEKUNTA}
    \renewcommand{\tdknamn}{STATVETENSKAPLIGA FAKULTETEN}
    \renewcommand{\tdkname}{FACULTY OF SOCIAL SCIENCES}
    \renewcommand{\flame}{flames/flame_val.pdf}
}

\DeclareOption{maa}{
    \colorlet{TDK}{Maa}
    \renewcommand{\tdknimi}{MAATALOUS-METS\"ATIETEELLINEN TIEDEKUNTA}
    \renewcommand{\tdknamn}{AGRIKULTUR-FORSTVETENSKAPLIGA FAKULTETEN}
    \renewcommand{\tdkname}{FACULTY OF AGRICULTURE AND FORESTRY}
    \renewcommand{\flame}{flames/flame_maa.pdf}
}

\DeclareOption{ell}{
    \colorlet{TDK}{Ell}
    \renewcommand{\tdknimi}{EL\"AINL\"A\"AKETIETEELLINEN TIEDEKUNTA}
    \renewcommand{\tdknamn}{VETERIN\"ARMEDICINSKA FAKULTETEN}
    \renewcommand{\tdkname}{FACULTY OF VETERINARY MEDICINE}
    \renewcommand{\flame}{flames/flame_ell.pdf}
}

\DeclareOption{bio}{
    \colorlet{TDK}{Bio}
    \renewcommand{\tdknimi}{BIO- JA YMP\"ARIST\"OTIETEELLINEN TIEDEKUNTA}
    \renewcommand{\tdknamn}{BIO- OCH MILJ\"OVETENSKAPLIGA FAKULTETEN}
    \renewcommand{\tdkname}{FACULTY OF BIOLOGICAL AND ENVIRONMENTAL SCIENCES}
    \renewcommand{\flame}{flames/flame_bio.pdf}
}

\DeclareOption{far}{
    \colorlet{TDK}{Far}
    \renewcommand{\tdknimi}{FARMASIAN TIEDEKUNTA}
    \renewcommand{\tdknamn}{FARMACEUTISKA FAKULTETEN}
    \renewcommand{\tdkname}{FACULTY OF PHARMACY}
    \renewcommand{\flame}{flames/flame_far.pdf}
}

\DeclareOption{kay}{
    \colorlet{TDK}{Kay}
    \renewcommand{\tdknimi}{K\"AYTT\"AYTYMISTIETEELLINEN TIEDEKUNTA}
    \renewcommand{\tdknamn}{BETEENDEVETENSKAPLIGA FAKULTETEN}
    \renewcommand{\tdkname}{FACULTY OF BEHAVIOURAL SCIENCES}
    \renewcommand{\flame}{flames/flame_kay.pdf}
}

\DeclareOption{sockom}{
    \colorlet{TDK}{Soc}
    \renewcommand{\tdknimi}{SVENSKA SOCIAL- OCH KOMMUNALH\"OGSKOLAN}
    \renewcommand{\tdknamn}{SWEDISH SCHOOL OF SOCIAL SCIENCE}
    \renewcommand{\tdkname}{\mbox{}}
    \renewcommand{\flame}{flames/flame_soc.pdf}
}

\DeclareOption{aleks}{
    \colorlet{TDK}{Ale}
    \renewcommand{\tdknimi}{ALEKSANTERI-INSTITUUTTI}
    \renewcommand{\tdknamn}{ALEXANDERINSTITUTET}
    \renewcommand{\tdkname}{ALEXANTERI INSTITUTE}
}

\DeclareOption{kirj}{
    \colorlet{TDK}{Kir}
    \renewcommand{\tdknimi}{HELSINGIN YLIOPISTON KIRJASTO}
    \renewcommand{\tdknamn}{HELSINGFORS UNIVERSITETS BIBLIOTEK}
    \renewcommand{\tdkname}{HELSINKI UNIVERSITY LIBRARY}
}

\DeclareOption{kiel}{
    \colorlet{TDK}{Kie}
    \renewcommand{\tdknimi}{KIELIKESKUS}
    \renewcommand{\tdknamn}{SPR\AA KCENTRUM}
    \renewcommand{\tdkname}{LANGUAGE CENTRE}
}

\DeclareOption{til}{
    \colorlet{TDK}{Til}
    \renewcommand{\tdknimi}{TILA- JA KIINTEIST\"OKESKUS}
    \renewcommand{\tdknamn}{LOKAL- OCH FASTIGHETSCENTER}
    \renewcommand{\tdkname}{CENTER FOR PROPERTIES AND FACILITIES}
}

\DeclareOption{rur}{
    \colorlet{TDK}{Rur}
    \renewcommand{\tdknimi}{RURALIA-INSTITUUTTI}
    \renewcommand{\tdknamn}{RURALIA-INSTITUTET}
    \renewcommand{\tdkname}{RURALIA INSTITUTE}
}

\DeclareOption{atk}{
    \colorlet{TDK}{Atk}
    \renewcommand{\tdknimi}{TIETOTEKNIIKKAKESKUS}
    \renewcommand{\tdknamn}{CENTER F\"OR INFORMATIONSTEKNOLOGI}
    \renewcommand{\tdkname}{CERTER FOR INTERMATION TECHNOLOGY}
}

\DeclareOption{koll}{
    \colorlet{TDK}{Kol}
    \renewcommand{\tdknimi}{TUTKIJAKOLLEGIUM}
    \renewcommand{\tdknamn}{FORSKARKOLLEGIET}
    \renewcommand{\tdkname}{HELSINKI COLLEGIUM FOR ADVANCED STUDIES}
}

\DeclareOption{avo}{
    \colorlet{TDK}{Avo}
    \renewcommand{\tdknimi}{AVOIN YLIOPISTO}
    \renewcommand{\tdknamn}{\"OPPNA UNIVERSITETET}
    \renewcommand{\tdkname}{OPEN UNIVERSITY}
}

\DeclareOption{neu}{
    \colorlet{TDK}{Neu}
    \renewcommand{\tdknimi}{NEUROTIETEEN TUTKIMUSKESKUS}
    \renewcommand{\tdknamn}{CENTRUM F\"OR NEUROVETENSKAP}
    \renewcommand{\tdkname}{NEUROSCIENCE CENTER}
}

\DeclareOption{biot}{
    \colorlet{TDK}{Biot}
    \renewcommand{\tdknimi}{BIOTEKNIIKAN INSTITUUTTI}
    \renewcommand{\tdknamn}{INTITUTET F\"OR BIOTEKNOLOGI}
    \renewcommand{\tdkname}{INSTITUTE OF BIOTECHNOLOGY}
}

\DeclareOption{koe}{
    \colorlet{TDK}{Koe}
    \renewcommand{\tdknimi}{KOE-EL\"AINKESKUS}
    \renewcommand{\tdknamn}{F\"ORS\"OKDJURSENHETEN}
    \renewcommand{\tdkname}{LABORATORY ANIMAL CENTRE}
}

\DeclareOption{palm}{
    \colorlet{TDK}{Pal}
    \renewcommand{\tdknimi}{KOULUTUS- JA KEHITT\"AMISKESKUS PALMENIA}
    \renewcommand{\tdknamn}{UTBILDNINGS- OCH UTVECKLINGSCENTRET PALMENIA}
    \renewcommand{\tdkname}{PALMENIA CENTRE FOR CONTINUING EDUCATION}
}

% TODO: Fix header and footer for landscape poster
\DeclareOption{portrait}{}
\DeclareOption{landscape}{\PassOptionsToPackage{landscape}{geometry}}

%\DeclareOption{roll36in}{\arolltrue}
\DeclareOption{a0paper}{\PassOptionsToPackage{a0paper}{geometry}\edef\fontscale{0.70710678}}
\DeclareOption{a1paper}{\PassOptionsToPackage{a1paper}{geometry}\edef\fontscale{0.70710678}}
\DeclareOption{a2paper}{\PassOptionsToPackage{a2paper}{geometry}\edef\fontscale{0.5}}
\DeclareOption{a3paper}{\PassOptionsToPackage{a3paper}{geometry}\edef\fontscale{0.35355339}}
\DeclareOption{a4paper}{\PassOptionsToPackage{a4paper}{geometry}\edef\fontscale{0.25}}


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

\DeclareOption{lotsmallertitle}{%
    \def\@titlesize{\LARGE}
}
\DeclareOption{smallertitle}{%
    \def\@titlesize{\huge}
}
\DeclareOption{normaltitle}{%
    \def\@titlesize{\Huge}
}
\DeclareOption{ragged}{%
    \raggedright
}
\DeclareOption{smallerauthor}{%
    \def\@authorsize{\normalsize}
    \def\@affsize{\scriptsize}
}
\DeclareOption{normalauthor}{%
    \def\@authorsize{\large}
    \def\@affsize{\footnotesize}
}

\DeclareOption{lowercasetitle}{%
    \renewcommand{\title}[1]{\def\@title{#1}}
}
\DeclareOption{uppercasetitle}{%
    \renewcommand{\title}[1]{\def\@title{\MakeUppercase{#1}}}
}


% Raise warning for unknown options
\DeclareOption*{\ClassWarning{test1}{Unknown Option \CurrentOption}}

% Set default options
\ExecuteOptions{threecolumn,nobalance,a0paper,portrait,ml,normaltitle,normalauthor,uppercasetitle}

% Process the options given
\ProcessOptions\relax



\input{a0size.sty}
\renewcommand{\tiny}{\fontsize{14.4}{18}\selectfont}
\renewcommand{\scriptsize}{\fontsize{17.28}{22}\selectfont}   
\renewcommand{\footnotesize}{\fontsize{20.74}{25}\selectfont}
\renewcommand{\small}{\fontsize{24.88}{30}\selectfont}
\renewcommand{\normalsize}{\fontsize{29.86}{37}\selectfont}
\renewcommand{\large}{\fontsize{35.83}{45}\selectfont}
\renewcommand{\Large}{\fontsize{43}{54}\selectfont}
\renewcommand{\LARGE}{\fontsize{51.6}{64}\selectfont}
\renewcommand{\huge}{\fontsize{61.92}{77}\selectfont}
\renewcommand{\Huge}{\fontsize{74.3}{93}\selectfont}
\newcommand{\veryHuge}{\fontsize{89.16}{112}\selectfont}
\newcommand{\VeryHuge}{\fontsize{107}{134}\selectfont}
\newcommand{\VERYHuge}{\fontsize{107}{134}\selectfont}

\renewcommand{\section}     {\@startsection {section}{1}{\z@}%
  {-2.5ex \@plus -1ex \@minus -.2ex}%
  {0.3ex \@plus.2ex}%
  {\reset@font\large\bfseries\sffamily\color{TDK}}}

\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\reset@font\large\bfseries\sffamily\color{TDK}}}
  
% Redifine lists for colour
\renewcommand{\labelitemi}{\color{TDK}$\bullet$}
\renewcommand{\descriptionlabel}[1]{\hspace{\labelsep}\color{TDK}\textbf{#1}}

% Define new title commands

\renewcommand{\thanks}[1]{\def\@thanks{#1}}
\newcommand{\affiliation}[1]{\def\@aff{#1}}

%\setlength\smallskipamount{8pt plus 2pt minus 2pt}
%\setlength\medskipamount{16pt plus 4pt minus 4pt}
%\setlength\bigskipamount{32pt plus 8pt minus 8pt}

%\setlength\abovecaptionskip{25pt}
%\setlength\belowcaptionskip{0pt}
%\setlength\abovedisplayskip{32pt plus 16pt minus 16 pt}
%\setlength\abovedisplayshortskip{0pt plus 8pt}
%\setlength\belowdisplayshortskip{100pt plus 50pt minus 50pt}
%\setlength\belowdisplayskip\abovedisplayskip

\RequirePackage[onecolumn,margin=3cm]{geometry}

% Set up colouring for first line of title

\input{firstline.tex}
\renewcommand\FirstLineFont{\textcolor{TDK}}

\renewcommand{\maketitle}{\PackageWarning{test1}{The maketitle command is disabled.}}

% Set up header and footer
\pagestyle{fancy}
\setlength{\voffset}{0pt}
\setlength{\headheight}{15cm}
\setlength{\headsep}{2cm}
\setlength{\textheight}{85cm}
\setlength{\footskip}{5cm}

\renewcommand{\headrulewidth}{0.8pt}

\lhead{\hbox to \hsize{%
    \hbox{\vtop{\vskip -0.6cm \hbox{\includegraphics[height=11cm]{\flame}}}}%
    \hbox{\vtop{\vskip 0pt \hbox{\parbox[b][10cm][c]{44cm}{\raggedright \@titlesize \FirstLine{\@title}} }}}%
    \hfill\hbox{\vtop{\vskip 0.5cm \hbox{%
        \parbox[b][10cm][b]{20cm}{\textcolor{black}{\nohyphens {\@authorsize \@author \\ \@affsize \@aff}}}}%
    }}%
}}%
    %

       

\chead{}\rhead{}\cfoot{}

\lfoot{\@thanks}
\rfoot{\small%
\textcolor{grey55}{HELSINGIN YLIOPISTO\\HELSINGFORS UNIVERSITET\\UNIVERSITY OF HELSINKI\\}%
\textcolor{TDK}{\tdknimi\\ \tdknamn\\ \tdkname}%
}

\setlength{\parskip}{0.7cm}


% Set some details
\renewcommand{\familydefault}{\sfdefault}
\setlength{\columnsep}{2cm}

% Do stuff at start of document
\AtBeginDocument{\b@lancestart}

% Do stuff at end of document
\AtEndDocument{\b@lanceend}

\endinput
