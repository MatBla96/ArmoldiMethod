function [l,v,it]=power_method(A,limit,eps,echo) 
%Normalized power method returns dominant eigenvalue and eigenvector
%[eig. value, eig. vector, count of iteration]=(matrix, limit, eps, echo)
%limit - max number of iterations, for 0 is max 100
%echo - default is true
if(nargin<4)
    echo=1;
end
if(limit==0)
    limit=100;
end
it=limit;
v1=rand(size(A,1),1);
v1=v1/norm(v1);
v=A*v1;
l=norm(v);
v=v/l;
prevL=2*l;%na prekonani vstupu do while
while(norm(l-prevL)>=eps)%pridat na vektor?
    prevL=l;
    v=A*v;
    l=norm(v);
    v=v/l;
    %norm(l-prevL)
    limit=limit-1;
    if(limit<=0 && echo)
        disp('limit of iterations reached');
        break;
    end
end
if(echo)
    it=it-limit;
    disp(['count of iterations: ',num2str(it)]);
end
end
