%% ==========%=====homework2
clear;clc;close all

t=0:0.01:10*pi;
y1=exp(-t/5).*sin(t);
y2=2*cos(t);
[ax,h1,h2]=plotyy(t,y1,t,y2,'plot');
grid on
% set(gca,'fontsize',8,'fontname','times new roman')
xlabel('time','fontsize',8,'fontname','times new roman')
set(get(ax(1),'ylabel'),'string', 'e^{-t/5}sin(t)','fontsize',8,'fontname','times new roman');%设置左侧坐标轴
%==note:  %下标输入方法F_1 或者F_{1,2}  注意如果是多个下标就用大括号括起来。对于上标的输入方法是F^1 或者F^{1,2}
set(get(ax(2),'ylabel'),'string', '2cos(t)','fontsize',8,'fontname','times new roman');%设置右侧坐标轴

set(h1,'Linestyle','--','color','r');%设置y1的图像线型
set(h2,'Linestyle',':','color','b','linewidth',1.5);%设置y2的图像线型

% %===%设置两个y坐标轴的颜色和刻度的字体大小
gca=get(gcf,'CurrentAxes')
set(ax(1), 'YColor', 'r','fontsize',8,'fontname','times new roman','ytick',[-1:0.5:1]);
set(ax(2), 'YColor', 'b','fontsize',8,'fontname','times new roman','ytick',[-2:0.5:2]);
set(gcf,'unit','centimeters','position',[10,10,14,10])%===%设置图形大小

%%==%让t以更大间隔增加，进行标记点
hold on
t1=0:1:10*pi;
y3=exp(-t1/5).*sin(t1);
y4=2*cos(t1);
[ax3,h3,h4]=plotyy(t1,y3,t1,y4);
set(h3,'Linestyle','none','marker','*','color','r');%设置y3的图像线型
set(h4,'Linestyle','none','marker','o','color','b','linewidth',1.5);%设置y4的图像线型，‘none’无线条
%===%设置第二次绘制点图时两个y坐标轴的颜色和刻度的字体大小和第一次相同
gca=get(gcf,'CurrentAxes')
set(ax3(1), 'YColor', 'r','fontsize',8,'fontname','times new roman','ytick',[-1:0.5:1]);
set(ax3(2), 'YColor', 'b','fontsize',8,'fontname','times new roman','ytick',[-2:0.5:2]);
% set(ax3(1),'ytick',[],'yticklabel',[])%去掉坐标轴上的数字并且去掉坐标轴但保留边框
% set(ax3(2),'ytick',[],'yticklabel',[])
% annotation('textarrow',[.1,.4],[.4,.4],'String','ABC');
%ANNOTATION('textarrow',X,Y) 命令，其（中X(1) ， Y(1) ）指定箭头尾部位置， （X(2) ， Y(2) ）指定箭头位置。
annotation('doublearrow',[0.135 0.4],[0.4 0.4]); %插入双箭头
%%  调试过程中用到的代码
close all
figure
x=-2*pi:pi/10:2*pi;
y1=sin(x);
y2=3*cos(x);
[AX,H1,H2] = plotyy(x,y1,x,y2,'plot');
gca=get(gcf,'CurrentAxes')
set(AX(1), 'YColor', 'b','fontsize',8,'fontname','times new roman');
set(AX(2), 'YColor', 'r','fontsize',8,'fontname','times new roman')
set(AX(1),'ytick',[],'yticklabel',[])
set(AX(2),'ytick',[],'yticklabel',[])%去掉坐标轴上的数字并且去掉坐标轴但保留边框

%====%%  调试过程中用到的代码   去掉坐标轴上的数字并且去掉坐标轴但保留边框
x=0:0.01:pi;
y=sin(x);
plot(x,y)
set(gca,'xtick',[],'xticklabel',[])
set(gca,'ytick',[],'yticklabel',[])