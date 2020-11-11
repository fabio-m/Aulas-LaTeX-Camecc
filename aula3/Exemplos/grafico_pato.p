#Script gnuplot para plotar gráfico dos patos

set title "Patos e felicidade" font "sans, 15"
set xlabel "Ano" font "sans, 12"
set ylabel "Pessoas" font "sans, 12"
set xrange [1985:2015]
set yrange [0:20000]
set boxwidth 2.5
set style fill solid
set xtics (1990, 2000, 2010)
plot "tabela.dat" using ($1 - 1.25):2 with boxes \
 title "Pessoas transformadas em patos"
rep "tabela.dat" using ($1 + 1.25):3 with boxes \
 title "Pessoas felizes"

