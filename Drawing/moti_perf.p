
set terminal postscript portrait color enhanced dashed lw 1 "Helvetica" 72
set output "../GRAPHS/moti_perf.eps"
set size 4,1.5

set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set style arrow 1 lc rgb "black" lt 1 lw 20 nohead 

set xtic right rotate by 45 font ",72
set key  out hor center top Left reverse
set ylabel "Speedup" font ",84
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1 
set yr [0:4]
set tmargin 2
set bmargin 5
set boxwidth 1.0
set arrow from -1,1 to 14,1 as 1
set ytics 1 font ",84 
set grid ytics 
set label "3.4" at -0.3,4.2
set label "5.2" at 0.8,4.2

      plot    "moti_perf.dat" using 3:xtic(1) ti col lc rgb "#DAA520", "" using 4:xtic(1) ti col lc rgb "#000000"



