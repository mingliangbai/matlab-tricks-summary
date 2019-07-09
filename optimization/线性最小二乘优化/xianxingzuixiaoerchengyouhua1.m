clear
clc
C=[1 2 -1 0;0 4 -3 2; 1 0 -1 1;2 8 1 7];
d=[1 1 1 1]'
[x,resnorm,residual,exitflag,output,lambda]=lsqnonneg(C,d)

