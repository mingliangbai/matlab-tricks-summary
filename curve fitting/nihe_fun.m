function f=example(x,ti)
n=length(ti);
for i=1:n
    f(i)=x(1)/(1+(x(1)/5.55-1)*exp(-(ti(i)-1950)*x(2)));


end

