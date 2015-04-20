set term postscript eps enhanced "Helvetica" 20
set output 'graf2.eps'
set title "Time vs Check Leafs, 1M, onecore" font ',20'
set key right center reverse at 70000, 100
set style data lines
set termoption dash
set linestyle 1 linetype 1 linewidth 1 lc 0
set linestyle 2 linetype 14 linewidth 1 lc 0
set linestyle 3 linetype 2 linewidth 1 lc 0
set linestyle 4 linetype 4 linewidth 1 lc 0

set xrange [ 0 : 75000 ]
set yrange [ 0 : 440 ]
set xlabel 'maximum leafs to visit [absolute number]'
set ylabel 'average search time [ms]'
set xtics 25000
set ytics 100

plot 'graf2.dat' using 9:2 title 'k=1' ls 1, 'graf2.dat' using 9:4 title 'k=10' ls 2, 'graf2.dat' using 9:6 title 'k=100' ls 3, 'graf2.dat' using 9:8 title 'k=1000' ls 4
