clear
clc

lb=[-3 -2]';%�Ա����½�
ub=[3,2]';%�Ա����Ͻ�
Aeq=[];
beq=[];
x0=[0 0]';%������ֵ
[x,fval,maxfval,exitflag,output,lambda]=fminimax(@example8_10,x0,[],[],Aeq,beq,lb,ub,[])%@example8_10Ϊ���Ż�����
% XΪ��Сֵ��,fvalΪ��Ӧ����Сֵ
