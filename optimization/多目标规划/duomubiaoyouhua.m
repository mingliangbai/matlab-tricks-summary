clear
clc
goal=[4000 -70000];
weight=[4000,-70000];
x0=[1,1]';
A=[-1,-1];
b=-9;
lb=[0,0]'; ub=[5,8]';
[x,fval,attainfactor,exitflag,output,lambda]=fgoalattain(@example8_16,x0,goal,weight,A,b,[],[],lb,ub)