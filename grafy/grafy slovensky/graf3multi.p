set term postscript eps enhanced "Helvetica" 20
set output 'graf3multi.eps'
set title "Recall vs Time, 1M, multicore" font ',20'
set key right center reverse at 160, 20
set style data lines
set termoption dash
set linestyle 1 linetype 1 linewidth 1 lc 0
set linestyle 2 linetype 14 linewidth 1 lc 0
set linestyle 3 linetype 2 linewidth 1 lc 0
set linestyle 4 linetype 4 linewidth 1 lc 0

set yrange [ 0 : 100 ]
set xrange [ 0 : 174]
set ylabel 'k-NN recall [%]'
set xlabel 'average search time [ms]'
set xtics 40
set ytics 20

plot 'graf3multi.dat' using 2:1 title 'k=1' ls 1, 'graf3multi.dat' using 4:3 title 'k=10' ls 2, 'graf3multi.dat' using 6:5 title 'k=100' ls 3, 'graf3multi.dat' using 8:7 title 'k=1000' ls 4


