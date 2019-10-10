function [W,R]=house(A)
[m,n]=size(A);
W=zeros(m,n);
for k=1:n
    x=A(k:m,k);
    e1=zeros(m-k+1,1);
    e1(1)=1;
    if x(1)~=0
        W(k:m,k)=sign(x(1))*norm(x)*e1+x;
    else
        W(k:m,k)=norm(x)*e1+x;
    end
    W(k:m,k)=W(k:m,k)/norm(W(k:m,k));
    A(k:m,k:n)=A(k:m,k:n)-2*W(k:m,k)*W(k:m,k)'*A(k:m,k:n);
end
R=A;
end
