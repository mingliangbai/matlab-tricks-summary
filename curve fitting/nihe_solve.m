clear
clc
close all
format long
load zhongguorenkou.txt%tiΪ�Ա�����yiΪ�����
ti=zhongguorenkou(:,1)' ;%Ҫ��ti��yi Ϊ������       ����ʾ��[0 0.5 1 1.5 2 2.5 3 3.5 4]   
yi=zhongguorenkou(:,2)' ;%         ����ʾ��[0 3.4 4.1 4.6  5.9 6.9 8.1 9.8 11]
x0=[16,0.1]';%��ʼֵ
[x,resnorm,residual,exitflag,output,lambda,J]=lsqcurvefit(@nihe_fun,x0,ti,yi)%��nihe.m�еĺ�������ϲ���x(1),x(2),x(3),x(4)

plot(ti,yi,'*')%��ԭ���ݵ��ɢ��ͼ
hold on
a=linspace(1950,2100,151);
y=x(1)./(1+(x(1)/5.55-1)*exp(-x(2)*(a-1950)));%yΪ���Ϊaʱ��Ӧ���˿���
%xlswrite('x.xls',y')%��1950��2100��ÿһ���й��˿ڵ�Ԥ��ֵд��x.xls��
plot(a,y,'r')
xlabel('year')
ylabel('population')

n=length(yi);
sumyi=0;
sum1=0;
sum2=0;
y1=x(1)./(1+(x(1)/5.55-1)*exp(-x(2)*(ti-1950)))
% for i=1:n
%     sumyi=sumyi+yi(i);
%     end
averageyi=mean(yi);%sumyi/n;
% for i=1:n
%    sum1=sum1+(y1(i)-yi(i)).^2;
%    sum2=sum2+(yi(i)-averageyi).^2;
% end
sum1=sum((y1-yi).^2);
sum2=sum((yi-averageyi).^2);
R2=1-sum1/sum2;%��������Ŷ�R2
RMSE=sqrt(sum(residual.^2)/length(residual));%������������RMSE
disp('����Ŷ�Ϊ��')
disp(R2)
disp('�в�ƽ����')
disp(resnorm)
disp('���������ΪRMSE=')
disp(RMSE)


