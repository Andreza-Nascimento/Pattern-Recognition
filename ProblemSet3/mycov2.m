function [C_cqg2,m_cqg2,val_cqg2] = mycov2(aux3)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
aux = [];
m = [];
aux = aux3';
[r c] = size(aux);
m = mymean(aux3);
m_cqg2 = m;
m = m';
M = zeros(r,c);
for j=1:1:c
    M(:,j) = m;
end
aux1 = (1/(c-1))*((aux-M)*(aux-M)');
C_cqg2 = aux1;
val_cqg2 = [rank(aux1) rcond(aux1)];
end
