clear
clc

lb=[-3 -2]';%自变量下界
ub=[3,2]';%自变量上界
Aeq=[];
beq=[];
x0=[0 0]';%迭代初值
[x,fval,maxfval,exitflag,output,lambda]=fminimax(@example8_10,x0,[],[],Aeq,beq,lb,ub,[])%@example8_10为待优化函数
% X为最小值点,fval为对应的最小值
