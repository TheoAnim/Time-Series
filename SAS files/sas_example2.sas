options linesize=75 center;
libname ldata '/home/jacktubbs/my_shared_file_links/jacktubbs/Example/Time_series';
title 'ExAMPLE1';
 data a; N=_N_; input  z @@; datalines;
 0.315 -0.458 -0.488 -0.170 0.565
 -0.344 -1.176 -1.054 -0.826 0.710
 -0.341 -1.809 -1.242 -0.667 -0.999
  2.812 1.286 -1.084 -1.505 -2.556
 -0.144 -1.749 -3.032 -2.958 -2.827
  -3.392 -2.431 -2.757 -2.822
 -3.314 -2.738 -1.979 -1.671 -2.977
  -0.709 0.718 0.736 0.879 1.642
 2.180 1.963 0.716 0.769
 0.973 0.334 1.309 0.878 0.062 0.169 0.677
 1.851 0.242 0.828 -0.317 -1.042 -2.0930 0.6530 0.2610 2.0200
 2.1360 1.6350 -0.1410 -1.7470 -2.0047 -0.7520 -0.2110 -1.0620
 -1.5650 0.2320 0.0150 -0.9350 -0.3380 0.8530 0.8880 3.0690 3.3640
 3.8540 4.4190 2.1450
 2.2910 1.7530 1.0580 1.0480 0.2000
 1.4240 0.5900 0.3560 0.4760 0.6840 -2.2600 -0.5690 -1.0140 -0.2070
 0.6380 -0.6640 -0.4690 -0.2150 -0.2960 -1.5610 0.2460 
 ;
  symbol1 v=star i=join color=red;
   proc means;
   proc gplot; plot z*N=1;run;
   proc sgplot data=a;
    scatter y=z x=n;
    series y=z x=n;
    run;
 proc arima;
    i var=z;
    e p=1 plot;
    e p=1 q=1 plot;
    run;