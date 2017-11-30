function l=power_method(A,v1,it) %normalized power method
v1=v1/norm(v1);
v=A*v1;
l=norm(v);
v=v/l;
while(it>0)
    v=A*v;
    l=norm(v);
    v=v/l;
    it=it-1;
end
end
