set term postscript eps enhanced "Helvetica" 20
set output 'graf7multi.eps'
set title "10-NN, variable size, multicore" font ',20'
set key right center reverse at 160, 60
set style data lines
set termoption dash
set linestyle 1 linetype 1 linewidth 1 lc 0
set linestyle 2 linetype 14 linewidth 1 lc 0
set linestyle 3 linetype 2 linewidth 1 lc 0
set linestyle 4 linetype 4 linewidth 1 lc 0

set yrange [ 0 : 100 ]
set xrange [ 0 : 174 ]
set ylabel '10-NN recall [%]'
set xlabel 'average search time [ms]'
set xtics 40
set ytics 20

plot 'graf7multi.dat' using 2:3 title 'size=100K' ls 1, 'graf7multi.dat' using 4:5 title 'size=300K' ls 2, 'graf7multi.dat' using 6:7 title 'size=500K' ls 3, 'graf7multi.dat' using 8:9 title 'size=1M' ls 4
