set term postscript eps enhanced "Helvetica" 20
set output 'graf1.eps'
set title "Recall vs Check Leafs, 1M, onecore" font ',20'
set key right center reverse at 63000, 20
set style data lines
set termoption dash
set linestyle 1 linetype 1 linewidth 1 lc 0
set linestyle 2 linetype 14 linewidth 1 lc 0
set linestyle 3 linetype 2 linewidth 1 lc 0
set linestyle 4 linetype 4 linewidth 1 lc 0

set xrange [ 0 : 66000 ]
set yrange [ 0 : 100 ]
set xlabel 'maximum leafs to visit [absolute number]'
set ylabel 'k-NN recall [%]'
set xtics 20000
set ytics 20
set arrow from 0,90 to 66000,90 nohead lc 5

plot 'graf2.dat' using 9:1 title 'k=1' ls 1, 'graf2.dat' using 9:3 title 'k=10' ls 2, 'graf2.dat' using 9:5 title 'k=100' ls 3, 'graf2.dat' using 9:7 title 'k=1000' ls 4
