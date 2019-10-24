function A=InterpoA(m,n)
x=linspace(-1,1,n);
y=linspace(-1,1,m);
Vx=zeros(n,n);
Vy=zeros(m,n);
for j=1:n
    for i=1:n
        Vx(i,j)=power(x(i),j-1);
    end
    for i=1:m
        Vy(i,j)=power(y(i),j-1);
    end
end
A=Vy/Vx;
end