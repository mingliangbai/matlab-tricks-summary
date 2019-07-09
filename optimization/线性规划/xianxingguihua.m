
clear
clc
f=-[10,5];%max”–-;min Œﬁ-
A=[0.3 0.4;0.5 0.2];
B=[9;8];
[x,fval,exitflag,output]=linprog(f,A,B,[],[],[0;0],[inf;inf])