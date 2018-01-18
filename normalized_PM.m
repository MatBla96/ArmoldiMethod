function l=normalized_PM(A,v1,m)
y=v1/norm(v1);
nextV=A*y;
l=norm(nextV);                                      !STAHNOUT TU MOJI!
nextY=nextV/l;
for i=1:m
   nextV=A*nextV;
   l=norm(nextV);
   nextY=nextV/l;
end
end


