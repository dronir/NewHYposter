\ProvidesClass{test1}[2013/09/18 test1 class (GK, MW)]
\NeedsTeXFormat{LaTeX2e}[1995/06/01]

\LoadClass[onecolumn]{article}

\RequirePackage{float}
\RequirePackage{multicol}
\RequirePackage[onecolumn,margin=1cm]{geometry}

\newcount\n@cols
\DeclareOption{twocolumn}{%
    \n@cols=2%
    \ClassWarning{test1}{Two columns usually looks bad in a poster. Are you really sure?}%
}
\DeclareOption{threecolumn}{\n@cols=3}
\DeclareOption{fourcolumn}{\n@cols=4}


% Unbalanced columns are the default behaviour
\DeclareOption{nobalance}{%
    \def\b@lancex{\begin{multicols*}{\n@cols}}%
    \def\b@lancey{\end{multicols*}}
}
% If for some reason the user wants balanced columns
\DeclareOption{balance}{%
    \def\b@lancex{\begin{multicols}{\n@cols}}%
    \def\b@lancey{\end{multicols}}
}

% Raise warning for unknown options
\DeclareOption*{\PackageWarning{test1}{Unknown Option \CurrentOption}}

% Set default options
\ExecuteOptions{threecolumn,nobalance}

% Process the options given
\ProcessOptions\relax

% No page numbers
\pagestyle{empty}

\AtBeginDocument{\b@lancex}

\AtEndDocument{\b@lancey}
