function m=mymean(X)
[r c] = size(X);
for i=1:1:c
    aux = 0;
    for j=1:1:r
        aux = aux+X(j,i);
    end
    m(i) = aux/r;
end