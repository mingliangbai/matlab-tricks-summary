clear
clc
close all
format long
load zhongguorenkou.txt%ti为自变量，yi为因变量
ti=zhongguorenkou(:,1)' ;%要求ti和yi 为行向量       输入示例[0 0.5 1 1.5 2 2.5 3 3.5 4]   
yi=zhongguorenkou(:,2)' ;%         输入示例[0 3.4 4.1 4.6  5.9 6.9 8.1 9.8 11]
x0=[16,0.1]';%初始值
[x,resnorm,residual,exitflag,output,lambda,J]=lsqcurvefit(@nihe_fun,x0,ti,yi)%求nihe.m中的函数的拟合参数x(1),x(2),x(3),x(4)

plot(ti,yi,'*')%画原数据点的散点图
hold on
a=linspace(1950,2100,151);
y=x(1)./(1+(x(1)/5.55-1)*exp(-x(2)*(a-1950)));%y为年份为a时对应的人口数
%xlswrite('x.xls',y')%将1950到2100年每一年中国人口的预测值写入x.xls中
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
R2=1-sum1/sum2;%计算拟合优度R2
RMSE=sqrt(sum(residual.^2)/length(residual));%计算均方根误差RMSE
disp('拟合优度为：')
disp(R2)
disp('残差平方和')
disp(resnorm)
disp('均方根误差为RMSE=')
disp(RMSE)


