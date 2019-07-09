function yy=hermite(x0,y0,y1,x)
%hermite��ֵ�������ݵ㣨x0,y0�������ĺ�����y1�����ĵ���ֵ���Լ��ڲ�ֵ��x���Ĳ�ֵ
n=length(x0);
m=length(x);
for k=1:m
    yy0=0;
    for i=1:n
        h=1;
        a=0;
        for j=1:n
            if j~=i
                h=h*((x(k)-x0(j))/(x0(i)-x0(j)))^2;
                a=1/(x0(i)-x0(j))+a;
            end
        end
        yy0=yy0+h*((x0(i)-x(k))*(2*a*y0(i)-y1(i))+y0(i));
    end
    yy(k)=yy0;
end

end

