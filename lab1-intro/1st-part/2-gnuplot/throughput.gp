set terminal pdf
set output 'throughput.pdf'

# Exercise: set the range
set xrange [0:20]

set title 'Application Throughput'
set xlabel 'Clients'
# Exercise: Update y label to thousands per second
set ylabel 'Throughput (1000op/s)'
# use the first and second columns from the file throughput.dat
# $1 is a reference to the 1st column
plot 'throughput.dat' using ($1):($2/1000) title "throughput" with linespoints
