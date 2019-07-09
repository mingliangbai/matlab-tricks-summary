clear
clc
f='100*(x(2)-x(1)^2)^2+(1-x(1))^2'%input('输入函数表达式')%输入示例
[x,fval,exitflag,output]=fminsearch(f,[2 2]')