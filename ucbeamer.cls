% ucbeamer.cls -- Template no oficial para presentaciones de posgrado en Ingeniería UC
% Compilar con LuaLaTeX. Diseño 16:9 inspirado en navegación académica Beamer y paleta UC azul/amarillo.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ucbeamer}[2026/06/29 Unofficial UC Engineering postgraduate Beamer template]

\LoadClass[aspectratio=169,11pt,professionalfonts]{beamer}

% ---------------------------------------------------------
% Paquetes base
% ---------------------------------------------------------
\RequirePackage{fontspec}
\RequirePackage[spanish,es-noquoting]{babel}
\RequirePackage{microtype}
\RequirePackage{csquotes}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage{pgfplotstable}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage{ragged2e}
\RequirePackage{amsmath,amssymb}
\RequirePackage{siunitx}
\RequirePackage[most]{tcolorbox}
\RequirePackage[backend=biber,style=authoryear,maxcitenames=2,maxbibnames=6,uniquelist=false,doi=true,url=true]{biblatex}
\RequirePackage{appendixnumberbeamer}
\RequirePackage{etoolbox}

\pgfplotsset{compat=1.18}
\usetikzlibrary{calc,positioning,arrows.meta,shapes.geometric,decorations.pathreplacing,fit}
\sisetup{detect-all,per-mode=symbol,range-phrase=--,range-units=single}

% ---------------------------------------------------------
% Tipografía
% ---------------------------------------------------------
\IfFontExistsTF{Roboto}{%
  \setsansfont{Roboto}[UprightFont=*-Regular,ItalicFont=*-Italic,BoldFont=*-Bold,BoldItalicFont=*-BoldItalic]
  \setmainfont{Roboto}[UprightFont=*-Regular,ItalicFont=*-Italic,BoldFont=*-Bold,BoldItalicFont=*-BoldItalic]
}{%
  \setsansfont{TeX Gyre Heros}
  \setmainfont{TeX Gyre Heros}
}
\renewcommand{\familydefault}{\sfdefault}

% ---------------------------------------------------------
% Paleta visual inspirada en recursos institucionales UC
% ---------------------------------------------------------
\definecolor{UCBlueDark}{HTML}{03122E}
\definecolor{UCBlue}{HTML}{173F8A}
\definecolor{UCBluePPT}{HTML}{2F86DE}
\definecolor{UCBlueMid}{HTML}{0176DE}
\definecolor{UCBlueSoft}{HTML}{CFE6FA}
\definecolor{UCBlueLight}{HTML}{EAF4FF}
\definecolor{UCYellow}{HTML}{FEC60D}
\definecolor{UCYellowDeep}{HTML}{D9A300}
\definecolor{UCGrayText}{HTML}{333333}
\definecolor{UCGray}{HTML}{707070}
\definecolor{UCGrayLight}{HTML}{F6F7F9}
\definecolor{UCWhite}{HTML}{FFFFFF}
\definecolor{UCGreen}{HTML}{049A04}
\definecolor{UCRed}{HTML}{A81919}

% ---------------------------------------------------------
% Beamer core: navegación superior limpia
% ---------------------------------------------------------
\mode<presentation>{
  \useoutertheme[footline=authorinstitutetitle,subsection=false]{smoothbars}
  \useinnertheme{circles}
  \setbeamertemplate{navigation symbols}{}
  \setbeamertemplate{caption}[numbered]
  \setbeamertemplate{bibliography item}{\color{UCYellow}\rule{0.10cm}{0.10cm}}

  \setbeamercolor{normal text}{fg=UCGrayText,bg=UCWhite}
  \setbeamercolor{alerted text}{fg=UCYellowDeep}
  \setbeamercolor{structure}{fg=UCBluePPT}
  \setbeamercolor{titlelike}{fg=UCWhite,bg=UCBluePPT}
  \setbeamercolor{title}{fg=UCWhite,bg=UCBluePPT}
  \setbeamercolor{frametitle}{fg=UCWhite,bg=UCBluePPT}
  \setbeamercolor{subtitle}{fg=UCBlueLight}

  \setbeamercolor{palette primary}{fg=UCWhite,bg=UCBluePPT}
  \setbeamercolor{palette secondary}{fg=UCWhite,bg=UCBlue}
  \setbeamercolor{palette tertiary}{fg=UCWhite,bg=UCBlueDark}
  \setbeamercolor{palette quaternary}{fg=UCWhite,bg=UCBlueDark}
  \setbeamercolor{section in head/foot}{fg=UCWhite,bg=UCBluePPT}
  \setbeamercolor{subsection in head/foot}{fg=UCBlueDark,bg=UCYellow}
  \setbeamercolor{mini frame}{fg=UCYellow,bg=UCBluePPT}
  \setbeamercolor{author in head/foot}{fg=UCWhite,bg=UCBlueDark}
  \setbeamercolor{title in head/foot}{fg=UCWhite,bg=UCBluePPT}
  \setbeamercolor{date in head/foot}{fg=UCWhite,bg=UCBlueDark}
  \setbeamercolor{footline}{fg=UCWhite,bg=UCBlueDark}

  \setbeamercolor{block title}{fg=UCWhite,bg=UCBluePPT}
  \setbeamercolor{block body}{fg=UCGrayText,bg=UCBlueLight}
  \setbeamercolor{block title alerted}{fg=UCBlueDark,bg=UCYellow}
  \setbeamercolor{block body alerted}{fg=UCGrayText,bg=UCYellow!16!white}
  \setbeamercolor{block title example}{fg=UCWhite,bg=UCBlueDark}
  \setbeamercolor{block body example}{fg=UCGrayText,bg=UCGrayLight}

  \setbeamerfont{title}{series=\bfseries,size=\fontsize{22.5}{25.5}\selectfont}
  \setbeamerfont{subtitle}{series=\mdseries,size=\fontsize{11.2}{13.2}\selectfont}
  \setbeamerfont{frametitle}{series=\bfseries,size=\fontsize{13.6}{16}\selectfont}
  \setbeamerfont{framesubtitle}{size=\fontsize{8.2}{9.5}\selectfont}
  \setbeamerfont{author}{size=\fontsize{9.4}{11}\selectfont}
  \setbeamerfont{institute}{size=\fontsize{8.2}{9.5}\selectfont}
  \setbeamerfont{date}{size=\fontsize{8.0}{9.2}\selectfont}
  \setbeamerfont{footline}{size=\fontsize{6.4}{7.2}\selectfont}
  \setbeamerfont{block title}{series=\bfseries,size=\fontsize{9.5}{11}\selectfont}
  \setbeamerfont{block body}{size=\fontsize{8.7}{10.2}\selectfont}
}

\setlength{\parskip}{0.22em}
\setlength{\leftmargini}{1.18em}
\setlength{\leftmarginii}{1.05em}
\AtBeginEnvironment{frame}{\justifying}

% ---------------------------------------------------------
% Metadatos editables
% ---------------------------------------------------------
\newcommand{\UCProgramType}{Magíster / Doctorado}
\newcommand{\UCThesisType}{Tesis de Magíster/Doctorado}
\newcommand{\UCArea}{Área / especialidad}
\newcommand{\UCProgram}{Nombre del programa de posgrado}
\newcommand{\UCSupervisor}{Profesor/a guía: Nombre profesor/a guía}
\newcommand{\UCCosupervisor}{Profesor/a co-guía: Nombre profesor/a co-guía}
\newcommand{\UCDepartment}{Departamento / Escuela}
\newcommand{\UCFaculty}{Escuela de Ingeniería}
\newcommand{\UCContact}{correo.institucional@uc.cl}
\newcommand{\UCLeftLogo}{assets/logos/uc_logo_template.png}
\newcommand{\UCRightLogo}{assets/logos/department_logo_placeholder.png}
\newcommand{\UCFooterText}{Presentación de posgrado -- Ingeniería UC}

\newcommand{\setprogramtype}[1]{\renewcommand{\UCProgramType}{#1}}
\newcommand{\setthesistype}[1]{\renewcommand{\UCThesisType}{#1}}
\newcommand{\setarea}[1]{\renewcommand{\UCArea}{#1}}
\newcommand{\setprogram}[1]{\renewcommand{\UCProgram}{#1}}
\newcommand{\setsupervisor}[1]{\renewcommand{\UCSupervisor}{#1}}
\newcommand{\setcosupervisor}[1]{\renewcommand{\UCCosupervisor}{#1}}
\newcommand{\setdepartment}[1]{\renewcommand{\UCDepartment}{#1}}
\newcommand{\setfaculty}[1]{\renewcommand{\UCFaculty}{#1}}
\newcommand{\setcontact}[1]{\renewcommand{\UCContact}{#1}}
\newcommand{\setfootertext}[1]{\renewcommand{\UCFooterText}{#1}}
\newcommand{\UCsetlogos}[2]{\renewcommand{\UCLeftLogo}{#1}\renewcommand{\UCRightLogo}{#2}}

% ---------------------------------------------------------
% Footline: barra académica + progreso amarillo
% ---------------------------------------------------------
\makeatletter
\newcommand{\frameofframes}{/}
\newcommand{\setframeofframes}[1]{\renewcommand{\frameofframes}{#1}}
\setbeamertemplate{footline}{%
  \leavevmode%
  \hbox{%
  \begin{beamercolorbox}[wd=.31\paperwidth,ht=2.45ex,dp=1.0ex,leftskip=.30cm]{author in head/foot}%
    \usebeamerfont{author in head/foot}\insertshortauthor
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.44\paperwidth,ht=2.45ex,dp=1.0ex,center]{title in head/foot}%
    \usebeamerfont{title in head/foot}\UCFooterText
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.25\paperwidth,ht=2.45ex,dp=1.0ex,rightskip=.30cm plus1fil]{date in head/foot}%
    \usebeamerfont{date in head/foot}\hfill\insertframenumber~\frameofframes~\inserttotalframenumber
  \end{beamercolorbox}}%
  \begin{tikzpicture}[remember picture,overlay]
    \fill[UCBlueSoft] (current page.south west) rectangle ([yshift=0.055cm]current page.south east);
    \fill[UCYellow] (current page.south west) rectangle ([xshift=0.18\paperwidth,yshift=0.055cm]current page.south west);
  \end{tikzpicture}%
}
\makeatother

% ---------------------------------------------------------
% Título de lámina con acento visual
% ---------------------------------------------------------
\setbeamertemplate{frametitle}{%
  \nointerlineskip%
  \begin{beamercolorbox}[wd=\paperwidth,ht=0.66cm,dp=0.08cm,leftskip=0.58cm,rightskip=0.58cm]{frametitle}
    % \begin{tikzpicture}[remember picture,overlay]
    %   \fill[UCYellow] ([xshift=0.23cm,yshift=-0.09cm]current page.north west) rectangle ([xshift=0.48cm,yshift=-0.75cm]current page.north west);
    % \end{tikzpicture}%
    \vbox to 0.66cm{\vfil\usebeamerfont{frametitle}\insertframetitle\ifx\insertframesubtitle\@empty\else\hfill{\usebeamerfont{framesubtitle}\color{UCBlueLight}\insertframesubtitle}\fi\vfil}
  \end{beamercolorbox}%
  \vspace*{0.10cm}%
}


% ---------------------------------------------------------
% Portada: versión limpia sin navegación superior ni franja
% ---------------------------------------------------------
\newcommand{\UCtitleframe}{%
\begin{frame}[plain,noframenumbering]

% Marco decorativo portada UC
\begin{tikzpicture}[remember picture,overlay]
  % Esquina superior izquierda e inferior derecha del marco
  \coordinate (A) at ([xshift=0cm,yshift=-0cm]current page.north west);
  \coordinate (B) at ([xshift=-0cm,yshift=0cm]current page.south east);

  % Marco azul completo
  \draw[
    UCBluePPT,
    line width=18pt
  ] (A) rectangle (B);

  % Segmento amarillo superior izquierdo
  \draw[
    UCYellow,
    line width=18pt
  ] 
  (A) -- 
  ([xshift=3.20cm]A);

  % Segmento amarillo inferior derecho
  \draw[
    UCYellow,
    line width=18pt
  ] 
  ([xshift=-3.20cm]B) -- 
  (B);
\end{tikzpicture}

\vspace*{0.30cm}


\begin{columns}[T,onlytextwidth]
  \begin{column}{0.48\textwidth}
    \raggedright
    \includegraphics[height=1.5cm]{\UCLeftLogo}
  \end{column}

  \begin{column}{0.48\textwidth}
    \raggedleft
    \vspace*{0.12cm}
    \includegraphics[height=1.3cm]{\UCRightLogo}
  \end{column}
\end{columns}

\begin{tcolorbox}[enhanced,sharp corners,boxrule=0pt,colback=UCBlueLight,left=12pt,right=12pt,top=8pt,bottom=8pt]
  {\raggedright\color{UCBlueDark}\fontsize{16.2}{18.2}\selectfont\bfseries\inserttitle\par}
  \vspace{0.10cm}
  {\color{UCBlue}\usebeamerfont{subtitle}\insertsubtitle}
\end{tcolorbox}

\vspace{0.32cm}

\begin{columns}[T,onlytextwidth]
  \begin{column}{0.63\textwidth}
    {\usebeamerfont{author}\textbf{\insertauthor}}\\[0.06cm]
    {\scriptsize\UCDepartment{}, \UCFaculty{}}\\
    {\scriptsize Tipo de programa: \UCProgramType{}}\\
    {\scriptsize\UCThesisType{}}
  \end{column}
  \begin{column}{0.33\textwidth}\raggedleft
    {\scriptsize\UCSupervisor{}}\\[0.04cm]
    {\scriptsize\UCCosupervisor{}}\\[0.04cm]
    {\scriptsize\insertdate}\\
    {\scriptsize Contacto: \UCContact}
  \end{column}
\end{columns}

\vfill

\begin{tcolorbox}[
  enhanced,
  sharp corners,
  boxrule=0pt,
  colback=UCBlueDark,
  left=7pt,
  right=7pt,
  top=3pt,
  bottom=3pt,
  halign=center
]
  {\color{UCWhite}\UCProgram}
\end{tcolorbox}

\end{frame}}


%%%%% diapositivas separadoras de sección %%%%%%%%
% ---------------------------------------------------------
% Secciones: panel académico estable, sin overlay
% ---------------------------------------------------------
\newcommand{\UCsectionframe}{%
\begin{frame}[t,noframenumbering]
\vspace*{0.45cm}
\begin{columns}[c,onlytextwidth]

  \begin{column}{0.31\textwidth}
    \begin{tcolorbox}[enhanced,sharp corners,boxrule=0pt,colback=UCBluePPT,height=4.65cm,valign=center,left=7pt,right=7pt]
      {\color{UCBlueSoft}\fontsize{70}{74}\selectfont\bfseries\thesection}\par
      \vfill
      %\includegraphics[height=0.48cm]{\UCLeftLogo}
    \end{tcolorbox}
  \end{column}

  \begin{column}{0.03\textwidth}
    \colorbox{UCYellow}{\rule{0pt}{4.65cm}\hspace{0.10cm}}
  \end{column}

  \begin{column}{0.62\textwidth}
    \begin{tcolorbox}[enhanced,sharp corners,boxrule=0pt,colback=UCBlueDark,height=4.65cm,valign=center,left=18pt,right=18pt]
      {\color{UCYellow}\large\bfseries Ingeniería UC}\par\vspace{0.48cm}
      {\color{UCWhite}\fontsize{18.2}{20.5}\selectfont\bfseries\insertsectionhead}\par\vspace{0.25cm}
      {\color{UCBlueSoft}\large\insertsubtitle}
    \end{tcolorbox}
  \end{column}

\end{columns}
\end{frame}}

\AtBeginSection[]{\UCsectionframe}


% ---------------------------------------------------------
% Cierre estable
% ---------------------------------------------------------
\newcommand{\UCthanksframe}[1][Gracias]{%
\begin{frame}[t,noframenumbering]
\vspace*{0.70cm}
\begin{tcolorbox}[enhanced,sharp corners,boxrule=0pt,colback=UCBluePPT,height=4.55cm,valign=center,left=18pt,right=18pt]
  \begin{columns}[c,onlytextwidth]
    \begin{column}{0.22\textwidth}
      \includegraphics[height=0.72cm]{\UCLeftLogo}
    \end{column}
    \begin{column}{0.54\textwidth}\centering
      {\color{UCWhite}\fontsize{31}{35}\selectfont\bfseries #1}\\[0.22cm]
      {\color{UCBlueLight}\large Preguntas y comentarios}\\[0.36cm]
      {\color{UCWhite}\small\insertauthor\\\UCContact}
    \end{column}
    \begin{column}{0.22\textwidth}\raggedleft
      \includegraphics[height=0.52cm]{\UCRightLogo}
    \end{column}
  \end{columns}
\end{tcolorbox}
\vspace{0.1cm}
\begin{tcolorbox}[enhanced,sharp corners,boxrule=0pt,colback=UCBlueDark,left=7pt,right=7pt,top=4pt,bottom=4pt]
  \color{UCWhite}\hfill\UCProgram
\end{tcolorbox}
\end{frame}}

% ---------------------------------------------------------
% Cajas y componentes
% ---------------------------------------------------------
\tcbset{ucboxbase/.style={enhanced,sharp corners=all,boxrule=0.40pt,left=7pt,right=7pt,top=5pt,bottom=5pt,arc=0pt,before skip=0.08cm,after skip=0.10cm}}

\newtcolorbox{UCBlock}[1]{ucboxbase,
  colback=UCBlueLight,
  colframe=UCBluePPT,
  borderline west={2.6pt}{0pt}{UCBluePPT},
  title={#1},
  coltitle=UCWhite,
  fonttitle=\bfseries,
  colbacktitle=UCBluePPT,
  attach boxed title to top left={xshift=0pt,yshift=0pt},
  boxed title style={sharp corners,arc=0pt,boxrule=0pt,left=7pt,right=7pt,top=3pt,bottom=3pt}}

\newtcolorbox{UCKeyPoint}[1][]{ucboxbase,
  colback=UCYellow!15!white,
  colframe=UCYellow,
  borderline west={3pt}{0pt}{UCYellow},
  #1}

\newtcolorbox{UCNeutralBox}[1][]{ucboxbase,
  colback=UCGrayLight,
  colframe=UCBlueSoft,
  boxrule=0.35pt,
  #1}

\newcommand{\UCmetric}[3]{%
  \begin{tcolorbox}[ucboxbase,colback=UCWhite,colframe=UCBlueSoft,boxrule=0.35pt,width=\linewidth]
  {\color{UCBluePPT}\fontsize{16.2}{18}\selectfont\bfseries #1}\par
  {\color{UCBlueDark}\fontsize{8.3}{9.5}\selectfont\bfseries #2}\par
  {\color{UCGray}\fontsize{6.4}{7.2}\selectfont #3}
  \end{tcolorbox}%
}

\newcommand{\UCsmallmetric}[3]{%
  \begin{tcolorbox}[ucboxbase,colback=UCWhite,colframe=UCBlueSoft,boxrule=0.35pt,width=\linewidth,left=5pt,right=5pt,top=4pt,bottom=4pt]
  {\color{UCBluePPT}\fontsize{12.6}{14}\selectfont\bfseries #1}\hfill{\color{UCBlueDark}\fontsize{7.6}{8.5}\selectfont\bfseries #2}\par
  {\color{UCGray}\fontsize{6.2}{7}\selectfont #3}
  \end{tcolorbox}%
}

\newcommand{\UCProcessArrow}[2]{%
  \begin{tikzpicture}[baseline=(n.base)]
  \node[draw=UCBluePPT,fill=UCBluePPT,text=UCWhite,rounded corners=1.5pt,inner xsep=6.2pt,inner ysep=3.8pt,font=\scriptsize\bfseries] (n) {#1};
  \node[anchor=north,text=UCGray,font=\tiny,align=center,text width=1.85cm] at ([yshift=-0.06cm]n.south) {#2};
  \end{tikzpicture}%
}

\newcommand{\UCquote}[2]{%
\begin{UCKeyPoint}
{\bfseries #1}\par\vspace{0.04cm}{\small #2}
\end{UCKeyPoint}}

\newcommand{\UCvspace}{\vspace{0.16cm}}

% Bullets
\setbeamertemplate{itemize item}{\tikz\fill[UCYellow] (0,0) rectangle (0.105,0.105);}
\setbeamertemplate{itemize subitem}{\tikz\fill[UCBluePPT] (0,0) circle (0.045);}
\setbeamercolor{itemize item}{fg=UCYellow}
\setbeamercolor{itemize subitem}{fg=UCBluePPT}
\setbeamercolor{enumerate item}{fg=UCBluePPT}

% ---------------------------------------------------------
% Slide tipo poster: banda azul con acentos amarillos
% ---------------------------------------------------------
\newcommand{\UCpostersection}[2]{%
\begin{tcolorbox}[enhanced,sharp corners,boxrule=0pt,colback=UCBluePPT,left=7pt,right=7pt,top=3pt,bottom=3pt,width=\linewidth]
\centering{\color{UCWhite}\bfseries\large #1}\hfill{\color{UCYellow}\bfseries #2}
\end{tcolorbox}}
