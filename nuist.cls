% !Mode:: "TeX:UTF-8"
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nuist}
\LoadClass[a4paper,c5size]{ctexart}%基于LaTeX的标准文档类型ctexart
\usepackage{xeCJK}
\usepackage{ccmap}
\usepackage{subfigure}

\RequirePackage{geometry}
\geometry{left=3cm,right=3cm,top=2.5cm,bottom=2.5cm}%,headsep=12pt,headheight=20pt,footskip=24pt
%设定页眉为空
\usepackage{fancyhdr}
\usepackage{lastpage}
\usepackage{layout}
\pagestyle{empty}                   %不设置页眉页脚 

\setlength\textfloatsep{10pt}%浮动体出现在页首或者页底时，浮动体与下方或者上方文字之间的距离
\setlength\abovecaptionskip{8pt}%图表标题上方的空白距离
\setlength\belowcaptionskip{6pt}%图表标题下方的空白距离
\setlength\arrayrulewidth{1pt}%列表线宽1pt
\newlength\savedwidth
\newcommand\whline{%定义粗线命令\whline，宽2pt
		\noalign{\global\savedwidth\arrayrulewidth\global\arrayrulewidth 1.2pt}
		\hline
		\noalign{\global\arrayrulewidth\savedwidth}}
%\renewcommand{\arraystretch}{1.5}%表格行距

%设置各种字体
\setCJKmainfont{Adobe Song Std}%设置宋体，此处使用Adobe Song，word宋体请用SimSun，不过会造成无法复制的问题
\setmainfont{Times New Roman}
%\usepackage{times}
%其他的一些数学字体，可酌情使用
%\usepackage{unicode-math}
%\setmathfont{Cambria Math}
%\setmathfont{Latin Modern Math}

%设置引用格式
\RequirePackage{ulem}
\usepackage[numbers,sort&compress]{natbib}

\newcommand{\ucite}[1]{$^{\mbox{\scriptsize\cite{#1}}}$}
\RequirePackage{xcolor}
%设置超链接颜色，默认为蓝色
\RequirePackage[colorlinks,linkcolor=black,anchorcolor=black,citecolor=black]{hyperref}

%colorlinks,linkcolor=red,anchorcolor=blue,citecolor=green

\usepackage{setspace}
\linespread{1.25}%1.25倍行距：此处注意行距的换算方法！
%修改图注字号
\usepackage{caption2}
\renewcommand{\captionfont}{\zihao{-5}}
\renewcommand{\captionlabelfont}{}

\usepackage{amsmath}
\usepackage{amssymb}
\graphicspath{{figs/color/}}
\usepackage{lastpage}
\usepackage{booktabs}%设置表格样式，可使用“三线表”

\usepackage{shapepar}

\RequirePackage{graphicx}
\CTEXsetup[format={\zihao{4}\heiti \raggedright}]{section}
\CTEXsetup[format={\zihao{5}\heiti \raggedright}]{subsection}
\CTEXsetup[format={\zihao{5}\songti \raggedright}]{subsubsection}

%目录样式的设置
\RequirePackage{titletoc}
\titlecontents{section}
[0em] {\color{black}\zihao{4}\heiti \addvspace{0.5ex}}
{\thecontentslabel\hspace*{1em}} {}%\hspace*{-2.3em}
{\titlerule*[0.4pc]{.}\contentspage}

\titlecontents{subsection}
[2em] {\color{black}\normalsize\addvspace{0.5ex}}
{\thecontentslabel\hspace*{1em}} {\hspace*{-2.3em}}
{\titlerule*[0.4pc]{.}\contentspage}

\titlecontents{subsubsection}
[4em] {\color{black}\normalsize\addvspace{0.5ex}}
{\thecontentslabel\hspace*{1em}} {\hspace*{-2.3em}}
{\titlerule*[0.4pc]{.}\contentspage}

%致谢标题
\newcommand{\thanking}{
\newpage
\addcontentsline{toc}{section}{致谢}
\section*{\centering \zihao{4} \heiti 致谢}
}
%参考文献
\renewcommand{\refname}{\zihao{4} \heiti 参考文献}
%中文摘要
\newcommand{\abstractofchinese}[2]{
%\addcontentsline{toc}{section}{摘要}
\vspace*{-1em}
\begin{quotation}
\noindent \zihao{5}\heiti 摘要：\zihao{5}\kaishu{#1}\\
{\zihao{5} \heiti 关键词}：\zihao{5}\kaishu #2
\end{quotation}
}
%英文摘要
\newcommand{\abstractofenglish}[2]{

%\addcontentsline{toc}{section}{Abstract}
\vspace*{-1em}
\begin{quotation}
\noindent \zihao{5} \textbf{Abstract:} {\zihao{5} #1
}\\
{\zihao{5} \textbf{Key words:}} \zihao{5} #2
\end{quotation}
\newpage
}

%插入目录
\newcommand{\mytableofcontents}{%
\renewcommand{\contentsname}{}
{\zihao{3}\heiti
\begin{center}
目\quad 录
\end{center}}
\vspace*{-4.5em}
\tableofcontents
}

%中文标题
\newcommand{\maketitleofchinese}[3]{\newpage\vspace*{0.3cm}
\begin{center}\zihao{3} \textbf{#1}\\[1em]\zihao{5}#2\\[0.8em]
\zihao{-5} 南京信息工程大学#3学院，江苏\ 南京\ 210044\end{center}
}
%英文标题
\newcommand{\maketitleofenglish}[3]{
\newpage
\vspace*{0.3cm}
\begin{center}
\zihao{3} \textbf{#1}\\[1em]
\zihao{5}#2\\[0.8em]
\zihao{-5} #3，NUIST，Nanjing 210044，China
\end{center}
}


%封面
\newcommand{\cover}[7]{
\begin{titlepage}
\begin{center}
\vspace*{1.2cm}
\includegraphics[scale=1]{nuist_logo//nuist.pdf}

\vspace*{1cm}
\hspace{4ex}\heiti\zihao{-1}\textbf{本科生毕业论文(设计)}\\
\vspace*{0.6cm}
\includegraphics[scale=1]{nuist_logo//xiaohui.jpg}

\vspace*{1.6cm}
\zihao{3}{\bfseries \songti \hspace*{.3cm}题~~~~目~~~~\uline{\raisebox{-1ex}{\parbox[b]{120mm}{\begin{center}
#1
\end{center}}}
}\hfill}


\vspace*{2.2cm}
\zihao{-3}\songti\hspace*{2.3cm}学生姓名\uline{\makebox[58mm]{#2}}\hfill

\vspace*{1.6mm}
\zihao{-3}\songti\hspace*{2.3cm}学~~~~~~~号\uline{\makebox[58mm]{#3}}\hfill

\vspace*{1.6mm}
\zihao{-3}\songti\hspace*{2.3cm}学~~~~~~~院\uline{\makebox[58mm]{#4}}\hfill

\vspace*{1.6mm}
\zihao{-3}\songti\hspace*{2.3cm}专~~~~~~~业\uline{\makebox[58mm]{#5}}\hfill

\vspace*{1.6mm}
\zihao{-3}\songti\hspace*{2.3cm}指导教师\uline{\makebox[58mm]{#6}}\hfill


\vspace*{40mm}
\bfseries\zihao{-2}#7
\end{center}
\end{titlepage}}
