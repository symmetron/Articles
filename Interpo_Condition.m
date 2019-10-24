InfNormA=zeros(1,30);
CondNum=zeros(1,30);
for n=1:30
    m=2*n-1;
    A=InterpoA(m,n);
    InfNormA(n)=max(sum(abs(A),2));     %inf norm of matrix A
    InfNormP=max(abs(sum(A,2)));                     %inf norm of P for constant function
    CondNum(n)=InfNormA(n)/InfNormP;
end
figure(1);plot(1:30,log(InfNormA));
figure(2);plot(1:30,log(CondNum));


