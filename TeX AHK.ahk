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


Numpad5::Send,
(
\si[per-mode=symbol]{{}{}}{Left}
)

Numpad6::Send,
(
\
)


Numpad7::Send,
(
{{}{}}{Left}
)

Numpad8::Send,
(
\times10{^}{{}{}}{Left}
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


:r0O:*10::
(
\times10{^}{{}{}}{Left}
)


:r0:lorentzgamma::
(
\gamma=\frac{{}1{}}{{}\sqrt{{}1-\frac{{}v{^}2{}}{{}c{^}2{}}{}}{}}{Enter}
)

:r0:lorentzbeta::
(
\beta=\sqrt{{}1-\frac{{}1{}}{{}\gamma{^}2{}}{}}
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



:r0O:eq::
(
\begin{{}equation{}} \label{{}{}}

\end{{}equation{}}{Up}
)


:r0*?:radtodeg::
(
1 rad =\frac{{}180\si{{}\degree{}}{}}{{}\pi{}}
)


:r0*?:degtorad::
(
1\si{{}\degree{}} =\frac{{}\pi{}}{{}180\si{{}\degree{}}{}}
)


:r0*:dx::
(
\mathrm{{}d{}}x
)


:r0*:dy::
(
\mathrm{{}d{}}y
)


:r0*:dz::
(
\mathrm{{}d{}}z
)


:r0*:dt::
(
\mathrm{{}d{}}t
)


:r0*:ul::
(
\underline{{}\underline{{}{}}{}}{Left}{Left}
)


:r0:emc2::
(
E=mc{^}2
)


:r0:csol::
(
299792458\si{{}m.s{^}{{}-1{}}{}}
)


:r0:gravit::
(
F=G\frac{{}m_1m_2{}}{{}r{^}2{}}
)



:r0:pconst::
(
h=6.62607015\times10{^}{{}-34{}}\si{{}J.s{}}
)


:r0:gconst::
(
G=6.674\times10{^}{{}-11{}}\si{{}m{^}3.kg{^}{{}-1{}}.s{^}{{}-2{}}{}}
)

:r0:sbconst::
(
\sigma=5.670374419\times10{^}{{}-8{}}\si{{}W.m{^}{{}-2{}}.K{^}{{}-4{}}{}}
)

:r0:svt::
(
s=v_0t+\frac{{}1{}}{{}2{}}a \cdot t{^}2
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
\vec{{}F{}}=m \cdot \vec{{}a{}}
)


::wfs::
(
W=\vec{F}s
)

:r0:angvel::
(
\omega=2\pi \cdot f
)


:r0O:mat::
(
\begin{{}math{}}

\end{{}math{}}{Up}
)

:r0:reldopplerfull::
(
\omega'=\frac{{}1{}}{{}\sqrt{{}1-\frac{{}v{^}2{}}{{}c{^}2{}}{}}{}}\cdot \omega \cdot (1-\frac{{}v{}}{{}c{}}\cos{{}\phi{}})
)

:r0:reldoppler::
(
\omega'=\gamma\omega(1-\beta\cos{{}\phi{}})
)

:r0:limes::
(
\lim_{{}x\to0{}}
)

:r0:vsp::
(
\vspace{{}2 mm{}}
)

::jtoev::
(
1\si{J}==6.24\times10^{18} \electronvolt
)

::head::
(
\documentclass[12pt,a4paper]{article}
\title{Calculus $\beta$}
\author{Rasmus Crolly}
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

\setlength{\parindent}{0pt}

\begin{document}
\maketitle


\end{document}
)





;O: Omit the ending character of auto-replace hotstrings when the replacement is produced. This is useful when you want a hotstring to be kept unambiguous by still requiring an ending character, but don't actually want the ending character to be shown on the screen. For example, if :o:ar::aristocrat is a hotstring, typing "ar" followed by the spacebar will produce "aristocrat" with no trailing space, which allows you to make the word plural or possessive without having to press Backspace. Use O0 (the letter O followed by a zero) to turn this option back off
;R: Send the replacement text raw; that is, without translating {Enter} to Enter, ^c to Control+C, etc. This option is put into effect automatically for hotstrings that have a continuation section. Use R0 to turn this option back off.
;* (asterisk): An ending character (e.g. Space, ., or Enter) is not required to trigger the hotstring.
;? (question mark): The hotstring will be triggered even when it is inside another word; that is, when the character typed immediately before it is alphanumeric. For example, if :?:al::airline is a hotstring, typing "practical " would produce "practicairline ". Use ?0 to turn this option back off.



