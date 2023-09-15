set terminal pdf
set output 'configs.pdf'

set title 'Configuration Cost'
set xlabel 'Configuration'
set ylabel 'Cost (eur)'

set boxwidth 0.5
set style fill solid
set style line 1 lc rgb "blue"
plot 'configs.dat' using 1:3:xtic(2) title 'cost' with boxes linestyle 1
