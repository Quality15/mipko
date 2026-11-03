% Cvičenie 4 — úloha 9
% Tento súbor sa prekladá do formátu .docx príkazom:
%   pandoc cv4-word.md -o cv4-word.docx
% Cieľom je zopakovať maticu a viacriadkový vzorec z článku v prostredí MS Word
% (vzorce sa vygenerujú ako nativne Word rovnice — OMML) a porovnať rozdiely.

# Cvičenie 4 — úloha 9: matica a vzorec v MS Word

Rovnaká matica príznakov a rovnaký viacriadkový vzorec ako v odovzdanom
prehľadovom článku (`clanok.tex`), tentokrát vytvorené ako rovnice v **MS Word**.

## Matica príznakov 5×4

$$\mathbf{X}_{5\times4} = \begin{pmatrix}
\phantom{-}0.82 & 0.15 & 14.5 & 2.40 \\
-0.45 & 0.78 & \phantom{0}1.2 & 0.15 \\
\phantom{-}0.94 & 0.05 & 28.0 & 2.85 \\
\phantom{-}0.12 & 0.65 & \phantom{0}2.1 & 0.40 \\
-0.78 & 0.42 & 19.3 & 2.10
\end{pmatrix}$$

## Viacriadkový vzorec (rozvoj presahujúci šírku riadka)

$$\begin{aligned}
T_n(u) &= (1-\alpha)^n T_0(u)
+ \alpha(1-\alpha)^{n-1}\varphi\bigl(r_1(u)\bigr) + \cdots \\
&\quad + \alpha(1-\alpha)\varphi\bigl(r_{n-1}(u)\bigr) + \alpha\varphi\bigl(r_n(u)\bigr),
\end{aligned}$$

kde $\alpha \in (0,1)$ je miera učenia a $\varphi(r_k(u)) \in \langle 0,1\rangle$
je normalizovaný signál autentickosti $k$-tej recenzie.

## Tá istá matica zadaná ako tabuľka

| Recenzia | Sentiment | Lex. diverzita | Frekv. publikovania | Odchýlka ratingu |
|---:|---:|---:|---:|---:|
| 1 |  0.82 | 0.15 | 14.5 | 2.40 |
| 2 | -0.45 | 0.78 |  1.2 | 0.15 |
| 3 |  0.94 | 0.05 | 28.0 | 2.85 |
| 4 |  0.12 | 0.65 |  2.1 | 0.40 |
| 5 | -0.78 | 0.42 | 19.3 | 2.10 |
