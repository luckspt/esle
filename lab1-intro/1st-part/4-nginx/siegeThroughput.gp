set terminal pdf
set output 'siegeThroughput.pdf'

set title 'NGINX Throughput'
set xlabel 'Clients'
set ylabel 'Throughput (op/s)'
# use the first and second columns from the file throughput.dat
# $1 is a reference to the 1st column
plot 'siegeThroughput.dat' using 1:3 title "throughput" with linespoints
