clear
clc
A=[1,2,1;-2,1,3];
b=[1,1]';
C=[0 -1 2;1 0 -1;-3 2 0];
d=[1,0,1]';
lb=[-5 -5 -2]';
ub=[5 5 2]';
Aeq=[]; beq=[];
[x,resnorm,residual,exitflag,output,lambda]=lsqlin(C,d,A,b,Aeq,beq,lb,ub)