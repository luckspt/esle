# this will generate the plot in PDF format
set terminal pdf

# the plot will be saved to file functions.pdf
set output 'functions.pdf'

set xrange[0:10]

# plot the sin and cos functions
plot cos(x), sin(x)
