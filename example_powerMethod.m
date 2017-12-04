function [L,V]=example_powerMethod(A)
%A=[1 0;-1 0];%[2 -4; -1 -1];%[1 2; 3 -4];
n=size(A,1);
V=zeros(n);
L=zeros(n,1);
ls=0; m=100;

for i=1:n
    [l,v,it]=power_method(A,m,1e-15);%matice, limit iteraci, eps
    if(it==m)
       disp('power metoda nedokonvergovala!!!');
    end
    if(norm(A*v-l*v)>1e-5)%je zaporné?
       l=-l;
       L(i)=-abs(l+ls);
    else
       L(i)=l-ls;
    end
    ls=ls+abs(l);
    V(:,i)=v;
    if(i==n)
        break;
    end
    A=A-l*eye(n);
end
end
