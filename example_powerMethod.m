function [ls,vs,it]=example_powerMethod(A)
%Priklad pouziti Power metody
if(nargin==0)
    A=[1 0;-1 0];%[2 -4; -1 -1];%[1 2; 3 -4];
end
ls=[];
vs=[];
n=size(A,1);
for i=1:n
    [l,v,it]=power_method(A,100,1e-15);
    %[vl. cislo, vl. vektor, poc. iteraci]=(matice, limit iteraci, eps, echo)
    ls=[ls,l];
    vs=[vs,v];
    A=A-l*eye(n);
    %posun spaktra (bez zpetneho pusunu)
end
disp(eig(A)');
disp(ls);
end
