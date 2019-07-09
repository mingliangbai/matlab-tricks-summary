clear
clc
A=[1,1];
b=3;
lb=[-3 -2]';
ub=[3,2]';
Aeq=[];
beq=[];
x0=[0 0]';
[x,fval,maxfval,exitflag,output,lambda]=fminimax(@example8_10,x0,[],[],Aeq,beq,lb,ub,[])
% [x,fval,maxfval,exitflag,output,lambda]=fminimax(@example8_10,x0,A,b,Aeq,beq,lb,ub,@nonlcon)
%% 

fitnessfcn = @example8_10;   % Function handle to the fitness function
nvars = 2;                      % Number of decision variables
lb = [-3,-2]';                   % Lower bound
ub = [3,2]';                     % Upper bound
A = []; b = [];                 % No linear inequality constraints
Aeq = []; beq = [];             % No linear equality constraints
options = gaoptimset('ParetoFraction',0.3,'PopulationSize',100,'Generations',200,'StallGenLimit',200,'TolFun',1e-100,'PlotFcns',@gaplotpareto);

[x1,fval1] = gamultiobj(fitnessfcn,nvars, A,b,Aeq,beq,lb,ub,options)%不能带有非线性约束
