function [l,v,it]=power_method(A,limit,eps) %normalized power method
%limit - max number of iterations, for 0 is max 100
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
while(norm(l-prevL)>=eps)
    prevL=l;
    v=A*v;
    l=norm(v);
    v=v/l;
    %norm(l-prevL)
    if(limit<=0)
        disp('limit of iterations reached');
        break;
    end
    limit=limit-1;
end
it=it-limit;
disp(['count of iterations: ',num2str(it)]);
end
