clear
clc
f='100*(x(2)-x(1)^2)^2+(1-x(1))^2'%input('���뺯�����ʽ')%����ʾ��
[x,fval,exitflag,output]=fminsearch(f,[2 2]')