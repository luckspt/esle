set terminal pdf
set output 'siegeThroughputSingle.pdf'

set title 'NGINX Throughput'
set xlabel 'Siege Nodes'
set ylabel 'Throughput (op/s)'
# use the first and second columns from the file throughput.dat
# $1 is a reference to the 1st column
plot 'siegeThroughputSingle.dat' using 2:4 title "throughput" with linespoints
