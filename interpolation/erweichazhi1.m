
clear
clc
close all
x=1:5;
y=1:3;
temps=[82 81 80 82 84;79 63 61 65 81;84 84 82 85 86];
mesh(x,y,temps)
z1=interp2(x,y,temps,2.8,2.6,'linear');
[xi,yi]=meshgrid(1:0.2:3);%��������
zi=interp2(x,y,temps,xi,yi,'cubic');%interp2��Ҫ��x,y�ȳ���
figure
mesh(xi,yi,zi)%��surf��ӡЧ�����ã���mesh
