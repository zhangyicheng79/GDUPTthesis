%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                            %%
%%           Class 'GDUPT Bachelor Dissertation Template'                     %%
%% ---------------------------------------------------------------------------%%
%%     A Bachelor LaTeX template for Guangdong University of Petrolchemical   %%
%%  Technolgy, Automation School                                              %%
%%                                                                            %%
%% Version: v0.0.1 beta                                                       %%
%% Authors: Yicheng Zhang <zhangyicheng@gdupt.edu.cn>                         %%
%%                        <YiZhang@lincoln.ac.uk>                             %%                  
%% License: MIT License (c) 2021 Yicheng Zhang                                %%
%% GitHub Repo:                                                               %%
%%                                                                            %%
%%     Reference Repo:  [1] https://github.com/kks32/phd-thesis-template/     %%
%%                      [2] https://github.com/tuna/thuthesis                 %%
%%                      [3]https://github.com/szsdk/LZUthesis/                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%============================ Acknowledgment ================================%%
%%         Krishna Kumar  (Cambridge template author)                         %%
%%         Ruini Xue <xueruini@gmail.com>, TUNA  (thuthesis template author)  %%                        
%%         Shen Zhou (LZU template author)                                    %%
%%         zoho@bbs.ctex.org （a brief Latex guide book author）              %%
%%         HaoLuan <HLuan@lincoln.ac.uk> （who first lead me to use Latex）   %%
%%                                                                            %%
%%                                                                            %%
%%         ctex.org <http://www.ctex.org/HomePage>                            %%
%%     ...    ...                                                             %%
%%----------------------------------------------------------------------------%%
%%  Please forgive me copying and using a lot of the Krisna's and Ruini's code, 
%%  and simply changing the  original class name to gdupt  (^_^)              %%
%%============================================================================%%
%% ***************************************************************************%%
%%  Ver 0.0.1 beta                                                            %%
%%    *修正了正文部分奇数页页眉出会多处一个阿拉伯数字的章号                        %%
%%                                                                            %%                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%----------  Class Identification ---------------------%%
\newcommand\fileversion{0.0.1 $\alpha$}
\newcommand\filedate{2021/02/16}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gduptbe}[\filedate ~ A Bachelor Assertation class file
 by Yicheng Zhang (Ver.~\fileversion)]
\typeout{ github url }

%%-------------------- Error Hints --------------------%%
\newcommand\gdupt@error[1]{%
  \ClassError{gduptbe}{#1}{}%
}
\newcommand\gdupt@warning[1]{%
  \ClassWarning{gduptbe}{#1}%
}
\newcommand\gdupt@patch@error[1]{%
  \gdupt@error{Failed to patch command \protect#1}%
}
\newcommand\gdupt@deprecate[2]{%
  \def\gdupt@@tmp{#2}%
  \gdupt@warning{%
    The #1 is deprecated%
    \ifx\gdupt@@tmp\@empty\else
      . Use #2 instead%
    \fi
  }%
}
\@ifl@t@r\fmtversion{2020/10/01}{}{
  \gdupt@error{%
    TeX Live 2020/W32TeX or later version is required to compile this document%
  }
}


\RequirePackage{iftex}
\ifXeTeX\else
  \gdupt@error{XeLaTeX is required to compile this document}
\fi

%%------------------------ Preliminary Declarations --------------------------%%
% use ctexbook class as basic template
% and pass all declarations to class ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}  
\ProcessOptions\relax   % doing notheing
%set page size and default font
\LoadClass[a4paper,UTF8,zihao=-4]{ctexbook}[2017/04/01]
% \setmainfont{STsong}
% \DeclareOption{times}{\setmainfont{Times New Roman}} 
% \AtEndOfPackage{\input{../Preamble/preamble.tex}}
\RequirePackage{amsmath, amsfonts, amssymb, graphicx}
%======= packages ======%
% \RequirePackage{graphicx}
\RequirePackage[svgnames]{xcolor}
% \RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
\RequirePackage{epigraph, titlesec, textcomp}
\RequirePackage[square, comma, sort&compress, numbers]{natbib}

% ************************** Layout and Formatting *****************************

\RequirePackage{lscape}   % Supports Landscape Layout
\RequirePackage{setspace} % Define line spacing in paragraph
\RequirePackage{calc}     % calculate vertical spacing

% ************************* Conditional Statements *****************************
\RequirePackage{ifthen}   % Conditional statements
\RequirePackage{ifpdf}    % Check for pdfLaTeX
\RequirePackage{ifxetex}  % XeLaTeX
\RequirePackage{etoolbox}
\RequirePackage{filehook}
\RequirePackage{xparse}
% \RequirePackage{geometry}%
\RequirePackage{fancyhdr}
% \RequirePackage{titletoc}
% \RequirePackage{notoccite}
% \RequirePackage{amsmath}
% \RequirePackage{unicode-math}
% \RequirePackage{graphicx}
% \RequirePackage[labelformat=simple]{subcaption}
% \RequirePackage{pdfpages}
% \includepdfset{fitpaper=true}
% \RequirePackage[shortlabels]{enumitem}
% \RequirePackage{environ}
% \RequirePackage{xeCJKfntef}
% \RequirePackage{soul}
% \RequirePackage{array}
% \RequirePackage{booktabs}
\RequirePackage{url}

\usepackage{fontspec}
\usepackage[]{unicode-math}
% \usepackage{ulem}
%% footnote 脚注
\RequirePackage[perpage, bottom]{footmisc}

% Redefining urlstyle to use smaller fontsize in References with URLs
\newcommand{\url@leostyle}{%
 \@ifundefined{selectfont}{\renewcommand{\UrlFont}{\sffamily}}
 {\renewcommand{\UrlFont}{\normalsize}}}
\urlstyle{leo}

%%自定义字体
\newcommand{\book@title}{\heiti \fontsize{40pt}{\baselineskip}\selectfont}





% option to split urls over multiple lines for latex >> DVIPS >> PDF option
\ifpdf
  % PDFLaTeX does it automatically.
\else
  % dvips
  \ifxetex
  \else % If not XeLaTeX
    \RequirePackage{breakurl} % to split the url over multiple lines
  \fi
\fi

% Don't break enumeration (etc.) across pages in an ugly manner
\clubpenalty=10000
\widowpenalty=10000
% ********************************** Fonts **********************************
%包括包
\usepackage{amsmath}
\usepackage{fontspec}
% \usepackage {xeCJK}
\usepackage[]{unicode-math}
\setmainfont[
  Extension = .otf,
  UprightFont = *-regular,
  BoldFont = *-bold,
  ItalicFont = *-italic,
  BoldItalicFont = *-bolditalic,
]{xits}

% %数学区的样式
% \setmathfont[ 
%   Extension = .otf,
%   BoldFont = *bold,
% ]{xits-math}
\setmathfont{latinmodern-math.otf}
%设置为默认的unicode 数学字体

% \setCJKmainfont{SimHei}
% \setCJKsansfont {KaiTi}
% \setCJKmonofont {KaiTi}
%%==== some other CJK fonts
% \setCJKfamilyfont{GDUPT@songti}{STSong}             %使用STsong 宋体
% \newcommand{\songti}{\CJKfamily{GDUPT@songti}}

\setCJKfamilyfont{GDUPT@kaiti}{STKaiti}             %使用STsong 楷体
\newcommand{\kaiti}{\CJKfamily{GDUPT@kaiti}}

% \setCJKfamilyfont{GDUPT@hwxk}{STXingkai}             %使用STXingkai华文行楷字体
% \newcommand{\huawenxingkai}{\CJKfamily{GDUPT@hwxk}}


% \setCJKfamilyfont{GDUPT@MSyahei}{Microsoft YaHei}             %使用STXingkai仿宋字体
% \newcommand{\YaHei}{\CJKfamily{GDUPT@MSyahei}}

% 目前较好地定义积分符号
\newcommand*{\dif}{\mathop{}\!\mathrm{d}}

% **************** Clear Header Style on the Last Empty Odd pages **************
\renewcommand{\cleardoublepage}{\clearpage\if@twoside \ifodd\c@page\else%
	\hbox{}%
	\thispagestyle{empty}  % Empty header styles
	\newpage%
	\if@twocolumn\hbox{}\newpage\fi\fi\fi}


% ******************************************************************************
% **************************** Macro Definitions *******************************
% ******************************************************************************
%%=====================声明常量和变量=====================%%
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

%%-------------变量-------------%%
% Student Number  学号
% 先定义一个内部命令
\newcommand{\@stunum}{}
%通过指令将参数值传入内部变量   
\newcommand{\stunum}[1]{\renewcommand{\@stunum}{#1}}  
% Subtitle (optional)  子标题
\newcommand{\@subtitle}{}  
\newcommand{\subtitle}[1]{\renewcommand{\@subtitle}{#1}}
% Subtitle (optional)  英文标题
\newcommand{\@entitle}{}   
\newcommand{\entitle}[1]{\renewcommand{\@entitle}{#1}} 
% The year and term the degree will be officially conferred
\newcommand{\@degreedate}{\monthname[\the\month]\space\the\year}
\newcommand{\degreedate}[1]{\renewcommand{\@degreedate}{#1}}
% The full (unabbreviated) name of the degree
\newcommand{\@degreetitle}{}
\newcommand{\degreetitle}[1]{\renewcommand{\@degreetitle}{#1}}
% The name of your department(eg. Engineering, Maths, Physics) 专业 
\newcommand{\@dept}{}
\newcommand{\dept}[1]{\renewcommand{\@dept}{#1}}
% The name of your school (eg. Automation) 学院
\newcommand{\@school}{}
\newcommand{\school}[1]{\renewcommand{\@school}{#1}}
% The name of your University  学校名
\newcommand{\@university}{}
\newcommand{\university}[1]{\renewcommand{\@university}{#1}}
% Defining the crest
\newcommand{\@crest}{}
\newcommand{\crest}[1]{\renewcommand{\@crest}{#1}}
% % Supervisor
% \newif\ifPHD@supervisor\PHD@supervisorfalse
% \newcommand{\@supervisor}{}
% \newcommand{\supervisor}[1]{\renewcommand{\@supervisor}{#1}\PHD@supervisortrue}

% % Supervisor Title (Supervisor - Default, can be changed)
% \newcommand{\@supervisorrole}{指导教师（职称） }
% \newcommand{\supervisorrole}[1]{\renewcommand{\@supervisorrole}{#1}}

% % Supervisor width to align
% \newcommand{\@supervisorlinewidth}{0.35\textwidth}
% \newcommand{\supervisorlinewidth}[1]{\renewcommand{\@supervisorlinewidth}{#1}}

% Advisor 导师
\newcommand{\@advisor}{}
\newcommand{\advisor}[1]{\renewcommand{\@advisor}{#1}}

% Student Class 班级
\newcommand{\@stucls}{}
\newcommand{\stucls}[1]{\renewcommand{\@stucls}{#1}}

% Design Ttime  设计时间
\newcommand{\@designtime}{DesignTime From to}
\newcommand{\designtime}[1]{\renewcommand{\@designtime}{#1}}

%%-------------常量-------------%%
% stunum Title 
\newcommand{\@stunumtitle}{学号：}
\newcommand{\stunumtitle}[1]{\renewcommand{\@stunumtitle}{#1}}

% Book Type
\newcommand{\@booktype}{毕 \space 业 \space 设 \space 计}
\newcommand{\booktype}[1]{\renewcommand{\@booktype}{#1}}


% Advisor Title (Default, can be changed)
\newcommand{\@advisorrole}{指导教师（职称）}
\newcommand{\advisorrole}[1]{\renewcommand{\@advisorrole}{#1}}


% Advisor width to align
\newcommand{\@advisorlinewidth}{0.3\textwidth}
\newcommand{\advisorlinewidth}[1]{\renewcommand{\@advisorlinewidth}{#1}}



% keywords (These keywords will appear in the PDF meta-information
% called `pdfkeywords`.)
% \newcommand{\@cnkeywords}{}
% \newcommand{\cnkeywords}[1]{\renewcommand{\@cnkeywords}{#1}}

% \newcommand{\@enkeywords}{}
% \newcommand{\enkeywords}[1]{\renewcommand{\@enkeywords}{#1}}


% subjectline (This subject will appear in the PDF meta-information
% called `pdfsubject`.)
\newcommand{\@subject}{}
\newcommand{\subject}[1]{\renewcommand{\@subject}{#1}}


% These macros define an environment for front matter that is always
% single column even in a double-column document. 保持单栏
\newenvironment{alwayssingle}{%
       \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
       \else\newpage\fi}
       {\if@restonecol\twocolumn\else\newpage\fi}

% Set single column even under two column layout 设为单栏模式
\newcommand{\setsinglecolumn}{
\if@twocolumn
   \onecolumn
\else
\fi
}

% ******************************** Line Spacing ********************************
% Set spacing as 1.5 line spacing for the PhD Thesis
% In practice, fortunately, nobody knows really what “one-and-a-half spaced
% type” means exactly (in terms of millimetres baseline distance). The following
% LaTeX setting has routinely been considered perfectly acceptable:
\renewcommand\baselinestretch{1.2}

% define  underline
% 带参数的下划线
\RequirePackage{array}
\def\GDUPT@underline[#1]#2{%
    \CJKunderline{\hbox to #1{\hfill#2\hfill}}}
\def\GDUPTunderline{\@ifnextchar[\GDUPT@underline\underline}
%定义双划线
\DeclareOption{doublelines}{
    \def\GDUPT@doublelines {}
}
% 中文空格
\newcommand\Cspace{\hspace{\ccwd}}

% 章节的各级标题中文设置
% \titleformat{\chapter}{\raggedright\huge\bfseries}{第\,\thechapter\,章}{1em}{}
\titleformat{\section}{\raggedright\Large\bfseries}{\,\thesection\,}{1em}{}
\titleformat{\subsection}{\raggedright\large\bfseries}{\,\thesubsection\,}{1em}{}

% CTEX设置为中文主题
\ctexset{
   chapter/name = {第, 章},
}
% 页眉页脚设置
% \fancyhdr[CE]{\@university {本科毕业设计}}
% \fancyhdr[CO]{\chaptername}
% \sethead[\chaptername]{\@university {本科毕业设计}}{}
% \headrule
% \setfoot[\thepage]{\thepage}

%%%%%%%%%%%%%%%%LZU%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%=============== 页眉页脚样式
%=======head and foot
% \RequirePackage{fancyhdr}  % Needed to define custom headers/footers
% \RequirePackage{lastpage}  % Number of pages in the document
% \RequirePackage{etoolbox}

\pagestyle{fancy}          % Enables the custom headers/footers
%% 页脚设置
\fancypagestyle{frontmatterstyle}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot{} % clear all footer fields
    \fancyfoot[CE,CO]{\thepage} %
    \renewcommand{\thepage}{\Roman{page}}
}

\appto\frontmatter{\pagestyle{frontmatterstyle}}


\ProcessOptions\relax
% \renewcommand{\chaptername}{}
% \renewcommand{\chaptertitlename}{}
% fancy 中通过\@chapapp  替代 \chaptername
%% 章名 用汉字来显示
\renewcommand{\@chapapp}{第\,\thechapter\,章 \Cspace}
%更新 leftmark显示的内容，去除多出来的 \thechapter部分
\renewcommand{\chaptermark}[1]{ \markboth{\@chapapp #1}{}}
% %更新leftmark的内容
% \renewcommand{\chaptermark}[1]{\markboth{\@chapapp#1}}
% \renewcommand{\chaptername}{}
% \renewcommand{\chaptertitlename}{}
%% 正文的页眉设置
\fancypagestyle{mainmatterstyle}{%
    % clear header and footer first
    \fancyhf{}
    %\headrulewidth 0.4pt
    \renewcommand{\headrulewidth}{0.4pt}
    % 页眉到页面顶部的水平距离
    % \setlength{\voffset}{0mm}
    % \setlength{\textwidth}{370pt}
    \setlength{\headheight}{12.64732pt}
    % !make the header line as wide as the text area
    \setlength{\headwidth}{\textwidth}
    % 将leftmark内容的章号换成中文
    %偶数页页眉
    \fancyhead[CE]{\small \@university 本科毕业设计 }
    % \def\chaptermark#1{\markboth{ \@chapapp}{}}
    
    %奇数页页眉
    \fancyhead[CO]{\small \leftmark }
    % Footers 页码为阿拉伯数字，位于页脚中间位置
    \fancyfoot{} % clear all footer fields
    \fancyfoot[CE,CO]{\thepage} % in the middle bottom
    % \fancyfoot[LE,RO]{\thepage}  % at the outter bottom 
}

\appto\mainmatter{\pagestyle{mainmatterstyle}}
% \appto\mainmatter{\linespread{1.3889}\selectfont}

% plain 去除页眉区域
\fancypagestyle{plain}{
    \fancyhead{}
    \renewcommand{\headrulewidth}{0pt}
}
\AtBeginDocument{\addtocontents{toc}{\protect\thispagestyle{frontmatterstyle}}}
%\renewcommand{\headrulewidth}{1pt}% % No header rule
%\newcommand{\headrulecolor}[1]{\patchcmd{\headrule}{\hrule}{\color{#1}\hrule}{}{}}
%\headrulecolor{black}

%=======format
\usepackage[font=small]{caption}

\RequirePackage[titles]{tocloft}
\renewcommand\cftchapdotsep{\cftdotsep}
\renewcommand\cftchapfont{\zihao{4}}
\renewcommand\cftsecfont{\zihao{-4}}
\renewcommand\cftsubsecfont{\zihao{-4}}
\renewcommand\cftchappagefont{\mdseries}







%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





% \ctexset{%
% chapter = {
%   format     = \centering\sffamily\fontsize{16bp}{20bp}\selectfont,
%   beforeskip = 30bp,
%   afterskip  = 20bp,
%   aftername  = \quad,
% },
% section = {
%   format     = \sffamily\fontsize{14bp}{18bp}\selectfont,
%   beforeskip = 25bp,
%   afterskip  = 12bp,
%   aftername  = \quad,
% },
% subsection = {
%   format     = \sffamily\fontsize{13bp}{15bp}\selectfont,
%   beforeskip = 12bp,
%   afterskip  = 6bp,
%   aftername  = \quad,
% },
% subsubsection = {
%   format     = \sffamily\fontsize{12bp}{14bp}\selectfont,
%   beforeskip = 12bp,
%   afterskip  = 6bp,
%   aftername  = \quad,
% },
% }%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% %----配置信息的实现，类似win的注册表----%%%
% %引入相关的包
% \RequirePackage{kvdefinekeys}
% \RequirePackage{kvsetkeys}
% \RequirePackage{kvoptions}
% %% 键表的基本信息设置
% \SetupKeyvalOptions{
%   family=gdupt,
%   prefix=gdupt@,
%   setkeys=\kvsetkeys}

% % 分配键值
% \newcommand\gduptsetup[1]{%
%   \kvsetkeys{gdupt}{#1}%
% }
% %%定义键—— 用于声明新的选项
% \newcommand\gdupt@define@key[1]{%
%   \kvsetkeys{gdupt@key}{#1}%
% }
% %
% \kv@set@family@handler{gdupt@key}{%
%   \@namedef{gdupt@#1@@name}{#1}%
%   \def\gdupt@@default{}%
%   \def\gdupt@@choices{}%
% %
%   \kv@define@key{gdupt@value}{name}{%
%     \@namedef{gdupt@#1@@name}{##1}%
%   }%

%   \@namedef{gdupt@#1@@check}{}%
%   \@namedef{gdupt@#1@@code}{}%
%   \kv@define@key{gdupt@value}{choices}{%
%     \def\gdupt@@choices{##1}%
%     \@namedef{gdupt@#1@@reset}{}%
%     \@namedef{gdupt@#1@@check}{%
%       \@ifundefined{%
%         ifgdupt@\@nameuse{gdupt@#1@@name}@\@nameuse{gdupt@\@nameuse{gdupt@#1@@name}}%
%       }
%       {%
%         \gdupt@error{Invalid value "#1 = \@nameuse{gdupt@\@nameuse{gdupt@#1@@name}}"}%
%       }%
%       \@nameuse{gdupt@#1@@reset}%
%       \@nameuse{gdupt@\@nameuse{gdupt@#1@@name}@\@nameuse{gdupt@\@nameuse{gdupt@#1@@name}}true}%
%     }%
%   }%
%   \kv@define@key{gdupt@value}{default}{%
%     \def\gdupt@@default{##1}%
%   }%
%   参数2
%   \kvsetkeys{gdupt@value}{#2}%
%   \@namedef{gdupt@\@nameuse{gdupt@#1@@name}}{}%
%   \kv@set@family@handler{gdupt@choice}{%
%     \ifx\gdupt@@default\@empty
%       \def\gdupt@@default{##1}%
%     \fi
%     \expandafter\newif\csname ifgdupt@\@nameuse{gdupt@#1@@name}@##1\endcsname
%     \expandafter\g@addto@macro\csname gdupt@#1@@reset\endcsname{%
%       \@nameuse{gdupt@\@nameuse{gdupt@#1@@name}@##1false}%
%     }%
%   }%
%   \kvsetkeys@expandafter{gdupt@choice}{\gdupt@@choices}%
%   \expandafter\let\csname gdupt@\@nameuse{gdupt@#1@@name}\endcsname\gdupt@@default
%   \expandafter\ifx\csname gdupt@\@nameuse{gdupt@#1@@name}\endcsname\@empty\else
%     \@nameuse{gdupt@#1@@check}%
%   \fi

%  声明一个新键值
%   \kv@define@key{gdupt}{#1}{%
%     \@namedef{gdupt@\@nameuse{gdupt@#1@@name}}{##1}%
%     \@nameuse{gdupt@#1@@check}%
%     \@nameuse{gdupt@#1@@code}%
%   }%
% }

% % 选项连接（读出键值赋给方法）
% \newcommand\gdupt@option@hook[2]{%
%   \expandafter\g@addto@macro\csname gdupt@#1@@code\endcsname{#2}%
% }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% *************************** Front Matter Layout ***************************
%% ============= 封面布局 ============= %%
%% ************* Title Page ********** %%
\renewcommand{\maketitle}
{
% To compute the free vertical space in Title page
% 计算垂直间距
\computeTitlePageSpacing
%清空页面样式
\thispagestyle{empty}
%单栏页面布局
 \begin{singlespace}
    %居中元素  
  
    %student number  to top right
   \rightline{\usebox{\GDUPT@stunum}}
   \begin{center}
   \vspace{.05\GDUPT@titlepagespacing}
    
   % Crest  %校名图
    {\usebox{\GDUPT@crest}}
    \vspace{.05\GDUPT@titlepagespacing}
    
    {\usebox{\GDUPT@booktype}}
    \vspace{.27\GDUPT@titlepagespacing}
   
    % \vspace{0.3\GDUPT@titlepagespacing}
    % {\usbox{Granduate Paper}}
    % Title  标题
    {\usebox{\GDUPT@Title}} 
    \vspace{.06\GDUPT@titlepagespacing}
   
    {\usebox{\GDUPT@entitle}} 
    \vspace*{1em}
 

  \vspace{.3\GDUPT@titlepagespacing}
       % Author
    % {\usebox{\GDUPT@author}}
    % \vspace*{0.5em}
    %    % Supervisor
    %   {\usebox{\PHD@supervisor}}
    %   \vspace*{0.5em}
    % Advisor
    {\usebox{\GDUPT@stuinfo}}
    % \vspace*{0.5em}
    \vfill
 
  \end{center}
 \end{singlespace}

}

%% ============= 诚信承诺书 ============= %%
%% ============= Statement ============= %%

\newcommand{\gdupt@statement@text}{本人郑重承诺：《\@title 》毕业设计（论文）的内容真实、可靠，是本人在 \underline{ \Cspace \@advisor  \Cspace }        指导教师的指导下，独立进行研究所完成。毕业设计（论文）中引用他人已经发表或未发表的成果、数据、观点等，均已明确注明出处，如果存在弄虚作假、抄袭、剽窃的情况，本人愿承担全部责任。对本论文所涉及的研究工作做出贡献的
  其他个人和集体，均已在文中以明确方式标明。} 
\newcommand{\gdupt@signature}{学生签名：}
\newcommand{\gdupt@backdate}{\hspace{3em}年\hspace{1.5em}月\hspace{1.5em}日}

\newcommand\statement{%
  \cleardoublepage
    \begin{center}
    \heiti \Large{广东石油化工学院本科毕业设计（论文）诚信承诺保证书}%
    \end{center}

    \vspace{1.5em}
   
      \begin{flushleft} 
        \fangsong \large \Cspace \Cspace \gdupt@statement@text
      \end{flushleft}
  \bigskip
  \vspace{8em}

      \begin{flushright}
      {
      \fangsong \large \gdupt@signature \space \hspace{5cm}
      \par
      \vspace{5mm}
      \gdupt@backdate\hspace{2.5cm}
      %\relax
      }
      \end{flushright} 

}%





%% ============= 摘 要 ============= %%
%% ------------- Chinese Abstract environment ------------- %%
\newenvironment{cnabstract} {

% Normal abstract in the thesis
  \cleardoublepage
  \setsinglecolumn

  \chapter*{\centering \Large {\abstractname}}
  \zihao{-4} \songti
  \thispagestyle{empty}

  % \textbf{关键词：} \@cnkeywords
}
%% ------------- English Abstract environment ------------- %%

\newenvironment{enabstract} {

% Normal abstract in the thesis
  \cleardoublepage
  \setsinglecolumn

  \chapter*{\centering \Large {Abstract}}
  \thispagestyle{empty}

  % \textbf{Keywords:} \@enkeywords
}



%% ============= 致 谢 ============= %%

% ****************************** Acknowledgements ********************************
% The acknowledgements environment puts a large, bold, centered
% "Acknowledgements" label at the top of the page.

\newenvironment{acknowledgements}{
\cleardoublepage
\setsinglecolumn
\chapter*{\centering \Large 致\Cspace 谢}
\thispagestyle{empty}
}


%% ============= 术 语 ============= %%
% ******************************* Nomenclature *********************************
\RequirePackage[intoc]{nomencl}
\makenomenclature
\renewcommand{\nomgroup}[1]{%
\ifthenelse{\equal{#1}{A}}{\item[\textbf{Roman Symbols}]}{%
\ifthenelse{\equal{#1}{G}}{\item[\textbf{Greek Symbols}]}{%
\ifthenelse{\equal{#1}{Z}}{\item[\textbf{Acronyms / Abbreviations}]}{%
\ifthenelse{\equal{#1}{R}}{\item[\textbf{Superscripts}]}{%
\ifthenelse{\equal{#1}{S}}{\item[\textbf{Subscripts}]}{%
\ifthenelse{\equal{#1}{X}}{\item[\textbf{Other Symbols}]}
{}
}% matches mathematical symbols > X
}% matches Subscripts           > S
}% matches Superscripts         > R
}% matches Abbreviations        > Z
}% matches Greek Symbols        > G
}% matches Roman Symbols        > A

% To add nomenclature in the header
\renewcommand{\nompreamble}{\markboth{\nomname}{\nomname}}

% Add nomenclature to contents and print out nomenclature
\newcommand{\printnomencl}[1][]{
\ifthenelse{\equal {#1}{}}
{\printnomenclature}
{\printnomenclature[#1]}
%\addcontentsline{toc}{chapter}{\nomname}
}

%% ============= 目 录 ============= %%
%% ************* Index ************* %%
% \RequirePackage{makeidx}
% \makeindex
% \newcommand{\printthesisindex}{
%     \cleardoublepage
%     \phantomsection
%     \printindex}



%% ============= 参 考 文 献 ============= %%
%% ************* Refference ************* %%
% \PassOptionsToPackage{compress}{natbib}
% \AtEndOfPackageFile*{natbib}{
%   \DeclareRobustCommand\inlinecite{\@inlinecite}
%   \def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
%   \let\onlinecite\inlinecite
%   % super style
%   \newcommand\bibstyle@super{%
%     \bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
%   % inline style  
%   \newcommand\bibstyle@inline{%
%     \bibpunct{[}{]}{,}{n}{,}{,}}
%   \@namedef{bibstyle@author-year}{%
%     \bibpunct{(}{)}{;}{a}{,}{,}}
%   % Use hook passing 'cite-style' to 'bibstyle'  
%   \gdupt@option@hook{cite-style}{
%     \@nameuse{bibstyle@\gdupt@cite@style}
%     }
%   %四种选项
%   \@namedef{bibstyle@gduptthesis-numeric}{\citestyle{super}}
%   \@namedef{bibstyle@gduptthesis-author-year}{\citestyle{author-year}}
%   \@namedef{bibstyle@gduptthesis-bachelor}{\citestyle{super}}
%   \@namedef{bibstyle@gduptthesis-inline}{\citestyle{inline}}
%  %重定义 NAT@citesuper 方法
%   \renewcommand\NAT@citesuper[3]{\ifNAT@swa
%     \if*#2*\else#2\NAT@spacechar\fi
%     % \unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close}%
%     %  \if*#3*\else\NAT@spacechar#3\fi\else #1\fi\endgroup}
%     \unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close\if*#3*\else#3\fi}%
%     \else #1\fi\endgroup}
%   %重定义 NAT@citesuper 方法
%   \renewcommand\NAT@citenum[3]{ %
%     \ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
%           % #1\if*#3*\else\NAT@cmt#3\fi\NAT@@close\else#1\fi\endgroup}
%           #1\NAT@@close\textsuperscript{\if*#3*\else#3\fi}\else#1\fi\endgroup
%           }
%  % 数字索引
%   \def\NAT@citexnum[#1][#2]#3{%
%     \NAT@reset@parser  %清空
%     \NAT@sort@cites{#3}%
%     \NAT@reset@citea
%     \@cite{\def\NAT@num{-1}\let\NAT@last@yr\relax\let\NAT@nm\@empty
%       \@for\@citeb:=\NAT@cite@list\do
%       {\@safe@activestrue
%       \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
%       \@safe@activesfalse
%       \@ifundefined{b@\@citeb\@extra@b@citeb}{%
%         {\reset@font\bfseries?}
%           \NAT@citeundefined\PackageWarning{natbib}%
%         {Citation `\@citeb' on page \thepage \space undefined}}%
%       {\let\NAT@last@num\NAT@num\let\NAT@last@nm\NAT@nm
%         \NAT@parse{\@citeb}%
%         \ifNAT@longnames\@ifundefined{bv@\@citeb\@extra@b@citeb}{%
%           \let\NAT@name=\NAT@all@names
%           \global\@namedef{bv@\@citeb\@extra@b@citeb}{}}{}%
%         \fi
%         \ifNAT@full\let\NAT@nm\NAT@all@names\else
%           \let\NAT@nm\NAT@name\fi
%         \ifNAT@swa
%         \@ifnum{\NAT@ctype>\@ne}{%
%           \@citea
%           \NAT@hyper@{\@ifnum{\NAT@ctype=\tw@}{\NAT@test{\NAT@ctype}}{\NAT@alias}}%
%         }{%
%           \@ifnum{\NAT@cmprs>\z@}{%
%           \NAT@ifcat@num\NAT@num
%             {\let\NAT@nm=\NAT@num}%
%             {\def\NAT@nm{-2}}%
%           \NAT@ifcat@num\NAT@last@num
%             {\@tempcnta=\NAT@last@num\relax}%
%             {\@tempcnta\m@ne}%
%           \@ifnum{\NAT@nm=\@tempcnta}{%
%             \@ifnum{\NAT@merge>\@ne}{}{\NAT@last@yr@mbox}%
%           }{%
%             \advance\@tempcnta by\@ne
%             \@ifnum{\NAT@nm=\@tempcnta}{%
%               % \ifx\NAT@last@yr\relax
%               %   \def@NAT@last@yr{\@citea}%
%               % \else
%               %   \def@NAT@last@yr{--\NAT@penalty}%
%               % \fi
%               \def@NAT@last@yr{-\NAT@penalty}%
%             }{%
%               \NAT@last@yr@mbox
%             }%
%           }%
%           }{%
%           \@tempswatrue
%           \@ifnum{\NAT@merge>\@ne}{\@ifnum{\NAT@last@num=\NAT@num\relax}{\@tempswafalse}{}}{}%
%           \if@tempswa\NAT@citea@mbox\fi
%           }%
%         }%
%         \NAT@def@citea
%         \else
%           \ifcase\NAT@ctype
%             \ifx\NAT@last@nm\NAT@nm \NAT@yrsep\NAT@penalty\NAT@space\else
%               \@citea \NAT@test{\@ne}\NAT@spacechar\NAT@mbox{\NAT@super@kern\NAT@@open}%
%             \fi
%             \if*#1*\else#1\NAT@spacechar\fi
%             \NAT@mbox{\NAT@hyper@{{\citenumfont{\NAT@num}}}}%
%             \NAT@def@citea@box
%           \or
%             \NAT@hyper@citea@space{\NAT@test{\NAT@ctype}}%
%           \or
%             \NAT@hyper@citea@space{\NAT@test{\NAT@ctype}}%
%           \or
%             \NAT@hyper@citea@space\NAT@alias
%           \fi
%         \fi
%       }%
%       }%
%         \@ifnum{\NAT@cmprs>\z@}{\NAT@last@yr}{}%
%         \ifNAT@swa\else
%           % \@ifnum{\NAT@ctype=\z@}{%
%           %   \if*#2*\else\NAT@cmt#2\fi
%           % }{}%
%           \NAT@mbox{\NAT@@close}%
%           \@ifnum{\NAT@ctype=\z@}{%
%             \if*#2*\else\textsuperscript{#2}\fi
%           }{}%
%         \fi
%     }{#1}{#2}%
%   }% End of \def\NAT@citexnum
%   %NAT@cite
%   \renewcommand\NAT@cite[3]{
%            \ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
%           % #1\if*#3*\else\NAT@cmt#3\fi\NAT@@close\else#1\fi\endgroup}
%           #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup
%           }
%   %
%   \def\NAT@citex%
%     [#1][#2]#3{%
%     \NAT@reset@parser
%     \NAT@sort@cites{#3}%
%     \NAT@reset@citea
%     \@cite{\let\NAT@nm\@empty\let\NAT@year\@empty
%       \@for\@citeb:=\NAT@cite@list\do
%       {\@safe@activestrue
%       \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
%       \@safe@activesfalse
%       \@ifundefined{b@\@citeb\@extra@b@citeb}{\@citea%
%         {\reset@font\bfseries ?}\NAT@citeundefined
%                   \PackageWarning{natbib}%
%         {Citation `\@citeb' on page \thepage \space undefined}\def\NAT@date{}}%
%       {\let\NAT@last@nm=\NAT@nm\let\NAT@last@yr=\NAT@year
%         \NAT@parse{\@citeb}%
%         \ifNAT@longnames\@ifundefined{bv@\@citeb\@extra@b@citeb}{%
%           \let\NAT@name=\NAT@all@names
%           \global\@namedef{bv@\@citeb\@extra@b@citeb}{}}{}%
%         \fi
%       \ifNAT@full\let\NAT@nm\NAT@all@names\else
%         \let\NAT@nm\NAT@name\fi
%       \ifNAT@swa\ifcase\NAT@ctype
%         \if\relax\NAT@date\relax
%           \@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}\NAT@date}%
%         \else
%           \ifx\NAT@last@nm\NAT@nm\NAT@yrsep
%               \ifx\NAT@last@yr\NAT@year
%                 \def\NAT@temp{{?}}%
%                 \ifx\NAT@temp\NAT@exlab\PackageWarningNoLine{natbib}%
%                 {Multiple citation on page \thepage: same authors and
%                 year\MessageBreak without distinguishing extra
%                 letter,\MessageBreak appears as question mark}\fi
%                 \NAT@hyper@{\NAT@exlab}%
%               \else\unskip\NAT@spacechar
%                 \NAT@hyper@{\NAT@date}%
%               \fi
%           \else
%             \@citea\NAT@hyper@{%
%               \NAT@nmfmt{\NAT@nm}%
%               \hyper@natlinkbreak{%
%                 \NAT@aysep\NAT@spacechar}{\@citeb\@extra@b@citeb
%               }%
%               \NAT@date
%             }%
%           \fi
%         \fi
%       \or\@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
%       \or\@citea\NAT@hyper@{\NAT@date}%
%       \or\@citea\NAT@hyper@{\NAT@alias}%
%       \fi \NAT@def@citea
%       \else
%         \ifcase\NAT@ctype
%           \if\relax\NAT@date\relax
%             \@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
%           \else
%           \ifx\NAT@last@nm\NAT@nm\NAT@yrsep
%               \ifx\NAT@last@yr\NAT@year
%                 \def\NAT@temp{{?}}%
%                 \ifx\NAT@temp\NAT@exlab\PackageWarningNoLine{natbib}%
%                 {Multiple citation on page \thepage: same authors and
%                 year\MessageBreak without distinguishing extra
%                 letter,\MessageBreak appears as question mark}\fi
%                 \NAT@hyper@{\NAT@exlab}%
%               \else
%                 \unskip\NAT@spacechar
%                 \NAT@hyper@{\NAT@date}%
%               \fi
%           \else
%             \@citea\NAT@hyper@{%
%               \NAT@nmfmt{\NAT@nm}%
%               \hyper@natlinkbreak{\NAT@spacechar\NAT@@open\if*#1*\else#1\NAT@spacechar\fi}%
%                 {\@citeb\@extra@b@citeb}%
%               \NAT@date
%             }%
%           \fi
%           \fi
%         \or\@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
%         \or\@citea\NAT@hyper@{\NAT@date}%
%         \or\@citea\NAT@hyper@{\NAT@alias}%
%         \fi
%         \if\relax\NAT@date\relax
%           \NAT@def@citea
%         \else
%           \NAT@def@citea@close
%         \fi
%       \fi
%       }}\ifNAT@swa\else
%         % \if*#2*\else\NAT@cmt#2\fi
%         \if\relax\NAT@date\relax\else\NAT@@close\fi
%         \if*#2*\else\textsuperscript{#2}\fi
%       \fi}{#1}{#2}}
%   \renewcommand\bibsection{\gdupt@chapter*{\bibname}}
%   \newcommand\gdupt@set@bibliography@format{%
%     \ifgdupt@degree@bachelor
%       \renewcommand\bibfont{\fontsize{10.5bp}{17bp}\selectfont}%
%       \setlength{\bibsep}{6bp \@plus 3bp \@minus 3bp}%
%       \ifgdupt@main@language@chinese
%         \setlength{\bibhang}{21bp}%
%       \else
%         \setlength{\bibhang}{0.5in}%
%       \fi
%     \else
%       \renewcommand\bibfont{\fontsize{10.5bp}{16bp}\selectfont}%
%       \setlength{\bibsep}{3bp \@plus 3bp \@minus 3bp}%
%       \setlength{\bibhang}{21bp}%
%     \fi
%   }
%   \gdupt@set@bibliography@format
%   \gdupt@option@hook{degree}{\gdupt@set@bibliography@format}
%   \gdupt@option@hook{main-language}{\gdupt@set@bibliography@format}
%   \patchcmd\thebibliography{%
%     \clubpenalty4000%
%   }{%
%     \interlinepenalty=5000\relax
%     \clubpenalty=10000\relax
%   }{}{\gdupt@patch@error{\thebibliography}}
%   \patchcmd\thebibliography{%
%     \widowpenalty4000%
%   }{%
%     \widowpenalty=10000\relax
%   }{}{\gdupt@patch@error{\thebibliography}}
%   \def\@biblabel#1{[#1]\hfill}
%   \renewcommand\NAT@bibsetnum[1]{%
%     % \settowidth\labelwidth{\@biblabel{#1}}%
%     % \setlength{\leftmargin}{\labelwidth}%
%     % \addtolength{\leftmargin}{\labelsep}%
%     \setlength{\leftmargin}{1cm}%
%     \setlength{\itemindent}{\z@}%
%     \setlength{\labelsep}{0.1cm}%
%     \setlength{\labelwidth}{0.9cm}%
%     \setlength{\itemsep}{\bibsep}
%     \setlength{\parsep}{\z@}%
%     \ifNAT@openbib
%       \addtolength{\leftmargin}{\bibindent}%
%       \setlength{\itemindent}{-\bibindent}%
%       \setlength{\listparindent}{\itemindent}%
%       \setlength{\parsep}{0pt}%
%     \fi
%   }
% }
% % 根据引用格式不同，赋予不同的标题（bibname）
% \AtEndOfPackageFile*{biblatex}{
%   \AtBeginDocument{
%     \ifthenelse{\equal{\blx@bbxfile}{apa}}{\def\bibname{REFERENCES}}{}
%     \ifthenelse{\equal{\blx@bbxfile}{apa6}}{\def\bibname{REFERENCES}}{}
%     \ifthenelse{\equal{\blx@bbxfile}{mla}}{\def\bibname{WORKS CITED}}{}
%     \ifthenelse{\equal{\blx@bbxfile}{mla-new}}{\def\bibname{WORKS CITED}}{}
%   }
%   \DeclareRobustCommand\inlinecite{\parencite}
%   \defbibheading{bibliography}[\bibname]{\gdupt@chapter*{\bibname}}
%   % 根据学位和语言设置选用参考文献格式
%   \newcommand\gdupt@set@bibliography@format{%
%     \ifgdupt@degree@bachelor
%       \renewcommand\bibfont{\fontsize{10.5bp}{17bp}\selectfont}%
%       \setlength{\bibitemsep}{6bp \@plus 3bp \@minus 3bp}%
%       \ifgdupt@main@language@chinese
%         \setlength{\bibhang}{21bp}%
%       \else
%         \setlength{\bibhang}{0.5in}%
%       \fi
%     \else
%       \renewcommand\bibfont{\fontsize{10.5bp}{16bp}\selectfont}%
%       \setlength{\bibitemsep}{3bp \@plus 3bp \@minus 3bp}%
%       \setlength{\biblabelsep}{0.1cm}%
%       \setlength{\bibhang}{21bp}%

%     \fi
%   }
%   \gdupt@set@bibliography@format
%   \gdupt@option@hook{degree}{\gdupt@set@bibliography@format}
%   \gdupt@option@hook{main-language}{\gdupt@set@bibliography@format}
% }  % End of AtEndOfPackageFile*{biblatex}
%    %%apacite
% \AtEndOfPackageFile*{apacite}{
%   \AtBeginDocument{
%     \gdupt@set@chapter@names
%   }
%   \renewcommand\bibliographytypesize{\fontsize{10.5bp}{17bp}\selectfont}
%   \setlength{\bibitemsep}{6bp}
%   % 根据文档的语言设置来决定边距
%   \ifgdupt@main@language@chinese
%     \setlength{\bibleftmargin}{21bp}
%     \setlength{\bibindent}{-\bibleftmargin}
%   \else
%     \setlength{\bibleftmargin}{0.5in}
%     \setlength{\bibindent}{-\bibleftmargin}
%   \fi
%   % 备注前是否加章号
%   \def\st@rtbibchapter{%
%     \if@numberedbib%
%       \chapter{\bibname}%   e.g.,   6. References
%     \else%
%       \gdupt@chapter*{\bibname}%   e.g.,   References
%     \fi%
%   }%
% }



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 封面的元素间距设置是通过显示内容计算得到的，good！
% ******************** To compute empty space in title page *******************
% Author: Krishna Kumar
% Boxes below are used to space different contents on the title page
% Based on https://github.com/cambridge/thesis

%生成封面所需的文本框（boxes）并计算封面元素的间距
\newcommand{\computeTitlePageSpacing}
{
  % student number  右上方的学号
  \songti
 \newsavebox{\GDUPT@stunum}
  \begin{lrbox}{\GDUPT@stunum}
    \begin{minipage}[c]{0.3\textwidth}
      \bfseries \@stunumtitle \underline{\space \@stunum \space} 
       %调用学号指令
    \end{minipage}
  \end{lrbox}  
  % University Crest Box  %学校的校名（图）
  \newsavebox{\GDUPT@crest}
  \begin{lrbox}{\GDUPT@crest}
    {\@crest  }
  \end{lrbox}

  % 毕业设计
  % \heiti
  \newsavebox{\GDUPT@booktype}
  \begin{lrbox}{\GDUPT@booktype}
    %\heiti
     { \centering \bfseries \book@title  \@booktype}
  \end{lrbox}

  % Title Box    %论文标题
  \newsavebox{\GDUPT@Title}
  \begin{lrbox}{\GDUPT@Title}
    \begin{minipage}[c]{0.95\textwidth}
      %\CJKfontspec{微软雅黑}  
     %\heiti
      \centering \bfseries \zihao{-2} \heiti {\@title }
   
      % 子标题
      % \ifthenelse{\equal{\@subtitle}{}}{
      %   % subtitle is not defined
      % }{
      %   \\
      %   \centering \Large {\@subtitle}
      % } % subtitle is defined
    \end{minipage}
  \end{lrbox}

% English Title  % 英文标题
% \newfontfamily\enfont{Times new Roman}

    \newsavebox{\GDUPT@entitle}
    \begin{lrbox}{\GDUPT@entitle}
    
      \begin{minipage}[c]{0.95\textwidth}
        {
        \centering  \bfseries \Large \fontspec{Times New Roman} {\@entitle} 
     
        % 子标题
        % \ifthenelse{\equal{\@subtitle}{}}{
        %   % subtitle is not defined
        % }{
        %   
        %   \centering \Large {\@subtitle}
        % } % subtitle is defined
        }
      \end{minipage}
     
    \end{lrbox}


  % Info Box  % 学生个人信息
  \newsavebox{\GDUPT@stuinfo}
  \begin{lrbox}{\GDUPT@stuinfo}
    \songti
    \bfseries
      \begin{minipage}[c]{\textwidth}
      { 
         \zihao{-3} {% 
        {学院}\underline{\makebox[26mm][c]{\@school}}{专业}\underline{\makebox[50mm][c]{\@dept}}{班级}\underline{\makebox[30mm][c]{\@stucls}}
        \par \vspace{3mm}
        {学生}\underline{\makebox[26mm][c]{\@author}} {指导教师（职称）}\underline{\makebox[60mm][c]{\@advisor}}
        \par \vspace{3mm}
        {设计时间}{\@designtime}
        % \vspace{0.2em}
        }
      } 
    \end{minipage}
  \end{lrbox}

  % Department Box  专业名
  % \newsavebox{\GDUPT@dept}
  % \begin{lrbox}{\GDUPT@dept}
  %   \begin{minipage}[c]{\textwidth}
  %     \centering {\large \@school \Cspace \@dept \par}
  %         {\large \@university \par}
  %   \end{minipage}
  % \end{lrbox}

  % % Submission Box
  % \newsavebox{\GDUPT@submissiontime}
  % \begin{lrbox}{\GDUPT@submissiontime}
  %   \begin{minipage}[c]{\textwidth}
  %     \begin{center}
  %       \large \submissiontext \par
  %       \large \textit {\@degreetitle} \par
  %     \end{center}
  %   \end{minipage}
  % \end{lrbox}

  % % College and Date Box
  % \newsavebox{\GDUPT@collegedate}
  % \begin{lrbox}{\GDUPT@collegedate}
  % \begin{minipage}[c]{\textwidth}
  %   \large
  %   \ifthenelse{\equal{\@college}{}}{
  %     % college is not defined
  %     \begin{center}
  %       \@degreedate
  %     \end{center}
  %   }{
  %     % college is defined
  %     \begin{minipage}[b]{0.49\textwidth}
  %       \flushleft\@college
  %     \end{minipage}
  %     \begin{minipage}[b]{0.49\textwidth}
  %       \flushright \@degreedate
  %     \end{minipage}
  %   } % college is defined
  % \end{minipage}
  % \end{lrbox}

  %  Now to compute the free vertical space  计算垂直间距
  \newlength{\GDUPT@titlepagespacing}
  \setlength{\GDUPT@titlepagespacing}{ \textheight %
        - \totalheightof{\usebox{\GDUPT@stunum}}
        - \totalheightof{\usebox{\GDUPT@crest}}
        - \totalheightof{\usebox{\GDUPT@booktype}}
        - \totalheightof{\usebox{\GDUPT@Title}}
        - \totalheightof{\usebox{\GDUPT@entitle}}
        % - \totalheightof{\usebox{\GDUPT@author}}
      % - \totalheightof{\usebox{\GDUPT@supervisor}}
        - \totalheightof{\usebox{\GDUPT@stuinfo}}
        % - \totalheightof{\usebox{\GDUPT@dept}}
        % - \totalheightof{\usebox{\GDUPT@submissiontime}}
        % - \totalheightof{\usebox{\GDUPT@collegedate}}
        }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% \AtEndOfClass{ \input{Info.tex} }


%item style
\usepackage{enumitem}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}



%math theorem
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\theorembodyfont{\rmfamily\songti}
\theoremheaderfont{\rmfamily\heiti}
\theoremsymbol{\ensuremath{\square}}
\newtheorem*{proof}{证明}
\theoremstyle{plain}
\theoremsymbol{}
\qedsymbol{\ensuremath{\square}}
\newtheorem{assumption}{假设}[chapter]
\newtheorem{definition}{定义}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{lemma}{引理}[chapter]
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{example}{例}[chapter]
\newtheorem{conjecture}{猜想}[chapter]

% \crefname{theorem}{定理}{定理}
% \crefname{assumption}{假设}{假设}
% \crefname{definition}{定义}{定义}
% \crefname{proposition}{命题}{命题}
% \crefname{lemma}{引理}{引理}
% \crefname{theorem}{定理}{定理}
% \crefname{axiom}{公理}{公理}
% \crefname{corollary}{推论}{推论}
% \crefname{example}{例}{例}
% \crefname{remark}{注释}{注释}
% \crefname{conjecture}{猜想}{猜想}


\DeclareRobustCommand\cs[1]{\texttt{\char`\\#1}}
\DeclareRobustCommand\file{\nolinkurl}
\DeclareRobustCommand\env{\textsf}
\DeclareRobustCommand\pkg{\textsf}
\DeclareRobustCommand\cls{\textsf}
\sloppy
% \AtEndOfPackageFile*{threeparttable}{
%   \g@addto@macro\TPT@defaults{\wuhao}
% }

\endinput
%% End of Class File