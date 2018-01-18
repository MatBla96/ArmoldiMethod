function priklad()
L=full(mark(7));%full(laplacian(graph([1 2 3 4 2 1 5 5],[2 3 4 1 4 3 6 7])));
[V,H]=arnoldi(L,0,1e-12);
disp(['ortonormalita: ',num2str(norm(V'*V-eye(size(V,2))))]);
%norma ortonormality
disp(mat2str(eig(L)'));
disp(eig(H)');
%neopakuje nasobna vl. cisla
end
