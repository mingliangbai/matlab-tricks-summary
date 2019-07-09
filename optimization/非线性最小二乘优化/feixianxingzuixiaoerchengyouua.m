clear
clc
x0=[0 0 0]';
lb=-2*[pi pi pi]'; ub=2*[pi pi pi]';
[x,resnorm,residual,exitflag,output,lambda,J]=lsqnonlin(@example8_14,x0,lb,ub)