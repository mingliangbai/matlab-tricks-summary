%% ==========%=====homework2
clear;clc;close all

t=0:0.01:10*pi;
y1=exp(-t/5).*sin(t);
y2=2*cos(t);
[ax,h1,h2]=plotyy(t,y1,t,y2,'plot');
grid on
% set(gca,'fontsize',8,'fontname','times new roman')
xlabel('time','fontsize',8,'fontname','times new roman')
set(get(ax(1),'ylabel'),'string', 'e^{-t/5}sin(t)','fontsize',8,'fontname','times new roman');%�������������
%==note:  %�±����뷽��F_1 ����F_{1,2}  ע������Ƕ���±���ô������������������ϱ�����뷽����F^1 ����F^{1,2}
set(get(ax(2),'ylabel'),'string', '2cos(t)','fontsize',8,'fontname','times new roman');%�����Ҳ�������

set(h1,'Linestyle','--','color','r');%����y1��ͼ������
set(h2,'Linestyle',':','color','b','linewidth',1.5);%����y2��ͼ������

% %===%��������y���������ɫ�Ϳ̶ȵ������С
gca=get(gcf,'CurrentAxes')
set(ax(1), 'YColor', 'r','fontsize',8,'fontname','times new roman','ytick',[-1:0.5:1]);
set(ax(2), 'YColor', 'b','fontsize',8,'fontname','times new roman','ytick',[-2:0.5:2]);
set(gcf,'unit','centimeters','position',[10,10,14,10])%===%����ͼ�δ�С

%%==%��t�Ը��������ӣ����б�ǵ�
hold on
t1=0:1:10*pi;
y3=exp(-t1/5).*sin(t1);
y4=2*cos(t1);
[ax3,h3,h4]=plotyy(t1,y3,t1,y4);
set(h3,'Linestyle','none','marker','*','color','r');%����y3��ͼ������
set(h4,'Linestyle','none','marker','o','color','b','linewidth',1.5);%����y4��ͼ�����ͣ���none��������
%===%���õڶ��λ��Ƶ�ͼʱ����y���������ɫ�Ϳ̶ȵ������С�͵�һ����ͬ
gca=get(gcf,'CurrentAxes')
set(ax3(1), 'YColor', 'r','fontsize',8,'fontname','times new roman','ytick',[-1:0.5:1]);
set(ax3(2), 'YColor', 'b','fontsize',8,'fontname','times new roman','ytick',[-2:0.5:2]);
% set(ax3(1),'ytick',[],'yticklabel',[])%ȥ���������ϵ����ֲ���ȥ�������ᵫ�����߿�
% set(ax3(2),'ytick',[],'yticklabel',[])
% annotation('textarrow',[.1,.4],[.4,.4],'String','ABC');
%ANNOTATION('textarrow',X,Y) ����䣨��X(1) �� Y(1) ��ָ����ͷβ��λ�ã� ��X(2) �� Y(2) ��ָ����ͷλ�á�
annotation('doublearrow',[0.135 0.4],[0.4 0.4]); %����˫��ͷ
%%  ���Թ������õ��Ĵ���
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
set(AX(2),'ytick',[],'yticklabel',[])%ȥ���������ϵ����ֲ���ȥ�������ᵫ�����߿�

%====%%  ���Թ������õ��Ĵ���   ȥ���������ϵ����ֲ���ȥ�������ᵫ�����߿�
x=0:0.01:pi;
y=sin(x);
plot(x,y)
set(gca,'xtick',[],'xticklabel',[])
set(gca,'ytick',[],'yticklabel',[])