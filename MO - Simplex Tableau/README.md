# Simple Tableau [Practice Math Optimization Lessons]

Matlab Simplex Tabluea


>>> run
[input]
P = [6 3];
A = [
       2 4
       4 3
    ];
b = [40; 120];

[output]
---------------------------------------------------------------------------------------
   NaN     1     2     3     4   NaN
   NaN     6     3     0     0     0
     1     2     4     1     0    40
     2     4     3     0     1   120
---------------------------------------------------------------------------------------
   NaN     1     2     3     4   NaN
   NaN    -6    -3    -0    -0     0
     3     2     4     1     0    40
     4     4     3     0     1   120

Pivot index [1 1], Pivot Value 2.000

---------------------------------------------------------------------------------------
        NaN    1.00000    2.00000    3.00000    4.00000        NaN
        NaN    0.00000    9.00000    3.00000    0.00000   20.00000
    1.00000    1.00000    2.00000    0.50000    0.00000   20.00000
    4.00000    0.00000   -5.00000   -2.00000    1.00000   40.00000
--- END on P ---

Min Z = 120
