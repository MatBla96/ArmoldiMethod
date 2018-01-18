function [V,H]=example
%Vytvoreni Laplaceovy matice grafu.
A=full(laplacian(graph([1 2 3 4 2 1 5 5],[2 3 4 1 4 3 6 7])));
m=6; %pocet iteraci (pri nule je nastaven rozmer matice)
eps=1e-10; %numericka presnost
%V vektory baze Krylovova podprostoru (ortonormalni), H horni Hessenbergova matice
[V,H]=arnoldi(A,m,eps);
end
