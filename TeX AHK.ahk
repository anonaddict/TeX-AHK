#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ; searches for any instance of the specified string since many windows get named stuff like "Untitled - Notepad" which would require you to hardcode every document name.
#ifWinActive TeX

Numpad1::Send,
(
\begin{{}equation{}} \label{{}{}}

\end{{}equation{}}{Up}
)

Numpad2::Send,
(

\begin{{}math{}}

\end{{}math{}}{Up}

)



Numpad4::Send,
(
\frac{{}{}}{{}{}}{Left}{Left}{Left}
)


Numpad6::Send,
(
\
)


Numpad7::Send,
(
{{}{}}{Left}
)


Numpad9::Send,
(
\mathrm{{}d{}}
)



:r0*?:=>::
(
\Rightarrow
)


:r0*?:>=::
(
\geq
)


:r0*?:<=::
(
\leq
)


:r0*?:=/=::
(
\neq
)


:r0:*::
(
\cdot 
)


:r0:lorentzfact::
(
\begin{{}equation{}} \label{{}{}}{Enter}
\gamma=\frac{{}1{}}{{}\sqrt{{}1-\frac{{}v{^}2{}}{{}c{^}2{}}{}}{}}{Enter}
\end{{}equation{}}
)


:r0:betavc::
(
\frac{{}v{}}{{}c{}}{}}
)


:r0:vmen::
(
Vm{(}f{)}=\left{(}0,\infty\right{]}
)


:r0:dmen::
(
Dm{(}f{)}\forall x\in\R
)


:r0O:vec::
(
\overrightarrow{{}{}}{Left}
)



:r0:blankeq::
(
\begin{{}equation{}} \label{{}{}}{Enter}
{Enter}
\end{{}equation{}}
{Up}
)


:r0*?:radtodeg::
(
1 rad =\frac{{}180\si{{}\degree{}}{}}{{}\pi{}}
)


:r0*?:degtorad::
(
1\si{{}\degree{}} =\frac{{}\pi{}}{{}180\si{{}\degree{}}{}}
)


:r0*?:dx::
(
\mathrm{{}d{}}x
)


:r0?*:dy::
(
\mathrm{{}d{}}y
)


:r0?*:dz::
(
\mathrm{{}d{}}z
)


:r0?:dt::
(
\mathrm{{}d{}}t
)


:r0*?:uline::
(
\underline{{}\underline{{}{}}{}}{Left}{Left}
)


:r0:emc2::
(
E=mc{^}2
)


:r0:csol::
(
299792458\frac{{}m{}}{{}s{^}2{}}
)


:r0:newtonmass::
(
F=G\frac{{}m_1m_2{}}{{}r{^}2{}}
)



:r0:planckj::
(
h=6.62607015\times10{^}{{}-34{}}J\cdot s
)

:r0:planckev::
(
h=4.135667696\times10{^}{{}-15{}}eV\cdot s
)

:r0:gconst::
(
G=6.674\times10{^}{{}-11{}}\frac{{}m{^}3{}}{{}kg\cdot s{^}2{}}
)

:r0:stefanboltzmann::
(
\sigma=5.670374419\times10{^}{{}-8{}}\frac{{}W{}}{{}m{^}2\cdot K{^}4{}}
)


:r0*:makefig::
(
\begin{{}figure{}}{[}htbp{]}
\centering
\includegraphics{[}scale=1{]}{{}filename.png{}}
\caption{{}caption{}}
\label{{}{}}
\end{{}figure{}}
)

:r0:fma::
(
\begin{{}equation{}} \label{{}{}}{Enter}
\overrightarrow{{}F{}}=m \cdot \overrightarrow{{}a{}}
\end{{}equation{}}
)

:r0:angvel::
(
\omega=2\pi \cdot f
)


:r0:blankmath::
(
\begin{{}math{}}

\end{{}math{}}{Up}
)


::HEADER::
(
\documentclass[12pt,a4paper]{report}
\title{Calculus $\beta$}
\author{Rasmus}
\date{\today}

\usepackage[utf8]{inputenc}
\usepackage{graphicx}
\usepackage{pgfplots}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{natbib}
\usepackage{siunitx}

\pgfplotsset{compat=1.16}
\usetikzlibrary{external}
\tikzexternalize[prefix=tikz/]

\newcommand{\R}{\mathbb{R}}
)
