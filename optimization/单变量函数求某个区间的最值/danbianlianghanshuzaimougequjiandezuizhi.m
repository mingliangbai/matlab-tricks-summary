
clear
clc
x=-2:0.01:2;
y=example8_8(x);
plot(x,y)
[x,fval,exitflag,output]=fminbnd(@example8_8,-2,2)
f='2*exp(-x).*sin(x)'%也可以用function定义函数
hold on
fplot(f,[0,8],'r')
format long
[x,fval,exitflag,output]=fminbnd(f,0,8)%min
f='-2*exp(-x)*sin(x)'
[x,fval,exitflag,output]=fminbnd(f,0,8)%max

