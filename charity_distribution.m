%charity distribution 

% before board of governors policy :
%the transformation probabilit matrix is 
P_b = [0.5 0.5 0;
    0.1 0.5 0.4;
    0.05 0.1 0.85];
I =[1 1 1;
    1 1 1;
    1 1 1];
%let Q'_b is the steady-state probability distribution :
Q_b = sym('q', [3 1], 'real');
Q_b * (P_b - I) = 0 ;