set terminal pdf
set output 'siegeThroughputConcurrent.pdf'

set title 'NGINX Throughput (4 siege nodes)'
set xlabel 'NGINX Nodes'
set ylabel 'Throughput (op/s)'
# use the first and second columns from the file throughput.dat
# $1 is a reference to the 1st column
plot 'siegeThroughputConcurrent.dat' using 1:4 title "throughput" with linespoints
