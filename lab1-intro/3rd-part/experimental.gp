set terminal pdf
set output 'experimental.pdf'

set title 'Experimental'
set xlabel 'Size'
set ylabel 'Throughput (op/s)'
# use the first and second columns from the file throughput.dat
# $1 is a reference to the 1st column

Lambda=995.6487801145
Delta=0.0267159441
Kappa=0.0007690939

S(N) = (Lambda*N) / (1 + Delta*(N - 1) + Kappa*N*(N - 1))

plot 'experimental.csv' using 1:2 title "throughput" with linespoints, \
    S(x) with lines lw 2 title "USM"
