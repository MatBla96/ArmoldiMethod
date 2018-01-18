function graphPowerMethod()
A=full(laplacian(graph([1 2 3 4 2 1 5 5],[2 3 4 1 4 3 6 7])));%full(mark(5));
n=3*size(A,1);
[ev,el]=eigs(A);
el=el(1,1);
ev=ev(:,1);
lerr=[];
verr=[];
for i=1:n
[l,v]=power_method(A,i,-1);
lerr=[lerr,abs(l-el)];%abs. chyba dominantniho vl. cisla
verr=[verr,norm(v-ev)];%chyba prislusneho vl. vektoru
disp([num2str(100*i/n),'%']);
end
hold on
plot(1:n,lerr,'r')
plot(1:n,verr,'g');
pause
close all
end
