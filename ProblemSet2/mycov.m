function [C_cqg,m_cqg] = mycov(aux3)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
aux = [];
m = [];
aux = aux3';
[r c] = size(aux);
m = mymean(aux3);
m_cqg = m;
m = m';
M = zeros(r,c);
for j=1:1:c
    M(:,j) = m;
end
aux1 = (1/(c-1))*((aux-M)*(aux-M)');
C_cqg = aux1;
end