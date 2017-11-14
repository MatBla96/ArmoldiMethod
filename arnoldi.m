function [V,H]=arnoldi(A,v1,m,err)
v1=v1/norm(v1);
n=size(A,1);
m=min(n,m);%!!!!!!!!!!!!!!
H=zeros(m,m);
V=zeros(n,m);
V(:,1)=v1;    

for j=1:m
    w=A*V(:,j);
    for i=1:j
        H(i,j)=(w')*V(:,i);
        w=w-H(i,j)*V(:,i);
    end
    if(j==m)
        disp('end cuz m or size A');
        return
    end
    tmp=norm(w);
    if(tmp<err)
        %stop
        disp('end cuz 0');
        return
    end
    H(j+1,j)=tmp;
    V(:,j+1)=w/H(j+1,j);
end

end
