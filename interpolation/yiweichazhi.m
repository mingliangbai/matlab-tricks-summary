
clear
clc
close all
x=[0 1 2 3 4 5];
y=[0 20 60 68 77 110];

y1=interp1(x,y,[2.6,4.9],'linear')% linear cubic(�������Բ�ֵ) spline 


x1=0:0.01:5;
y1=interp1(x,y,x1,'linear');%x�������뵥������
figure
plot(x,y,'*')
hold on
plot(x1,y1)

    