set terminal pdf
set output 'siegeThroughputConcurrent.pdf'

set title 'Experimental'
set xlabel 'Size'
set ylabel 'Throughput (op/s)'
# use the first and second columns from the file throughput.dat
# $1 is a reference to the 1st column

Lambda=8.3548772418
Delta=1.1842033707
Kappa=-0.0140896120

S(N) = (Lambda*N) / (1 + Delta*(N - 1) + Kappa*N*(N - 1))

plot 'siegeThroughputConcurrent.csv' using 1:2 title "throughput" with linespoints, \
    S(x) with lines lw 2 title "USM"
