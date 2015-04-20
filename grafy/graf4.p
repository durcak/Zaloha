set term postscript eps enhanced "Helvetica" 20
set output 'graf4.eps'
set title "10-NN, various sizes, onecore" font ',20'
set key right center reverse at 63000, 60
set style data lines
set termoption dash
set linestyle 1 linetype 1 linewidth 1 lc 0
set linestyle 2 linetype 14 linewidth 1 lc 0
set linestyle 3 linetype 2 linewidth 1 lc 0
set linestyle 4 linetype 4 linewidth 1 lc 0

set xrange [ 0 : 66000 ]
set yrange [ 0 : 100]
set xlabel 'maximum leafs to visit [absolute number]'
set ylabel '10-NN recall [%]'
set xtics 20000
set ytics 20

plot 'graf7.dat' using 1:3 title 'size=100K' ls 1, 'graf7.dat' using 1:5 title 'size=300K' ls 2, 'graf7.dat' using 1:7 title 'size=500K' ls 3, 'graf7.dat' using 1:9 title 'size=1M' ls 4
