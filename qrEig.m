function A=qrEig(A,m,eps)
limit=m;
if(m==0)
    limit=100;
end
it=limit;
diagLast=100*rand(size(A,1),1);%na prvni pruchod podminkou
while(norm(diag(A)-diagLast)>=eps)
    %ruzne metody qr!!!!!!!!!!!!!
    diagLast=diag(A);
    [Q,R]=qr(A);
    A=R*Q;
    limit=limit-1;
    if(limit<=0)
        disp('limit of iterations reached');
        break;
    end
end
it=it-limit;
disp(['count of iterations: ',num2str(it)]);
end
