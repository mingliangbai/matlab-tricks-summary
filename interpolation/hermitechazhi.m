clear
clc
close all
t=[0.1 0.5 1 1.5 2 2.5 3];
y=[0.95 0.84 0.86 1.06 1.5 0.72 1.9];%y为函数值
y1=[1 1.5 2 2.5 3 3.5 4];%y1为导数值
%yy=hermite(t,y,y1,1.8)
t1=[0.1:0.01:3];
yy1=hermite(t,y,y1,t1);%hermite插值
yy2=interp1(t,y,t1,'linear');%分段线性插值
yy3=lagrange(t,y,t1);%lagrange插值
plot(t,y,'o',t,y1,'*',t1,yy1,'r',t1,yy2,'b',t1,yy3,'g')