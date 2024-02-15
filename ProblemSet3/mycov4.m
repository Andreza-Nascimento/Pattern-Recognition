function [C_cqg4,Ci_cqg4,m_cqg4,val_cqg4] = mycov4(aux3)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
aux = [];
m = [];
aux = aux3';
[r c] = size(aux);
m = mymean(aux3);
m_cqg4 = m;
m = m';
M = zeros(r,c);
for j=1:1:c
    M(:,j) = m;
end
aux1 = (1/(c-1))*((aux-M)*(aux-M)');
C_cqg4 = diag(diag(aux1));
Ci_cqg4 = pinv(C_cqg4);
% Ci_cqg = inv(C_cqg);
val_cqg4 = [rank(C_cqg4) rcond(C_cqg4)];
end