[x,y]=meshgrid(-3:0.25:3);
z=peaks(x,y);
[x1,y1]=meshgrid(-3:0.125:3);
z1=interp2(x,y,z,x1,y1);
subplot(1,2,1)
mesh(x,y,z)
subplot(1,2,2)
mesh(x1,y1,z1)
