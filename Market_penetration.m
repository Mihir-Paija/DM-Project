 
%Brand loyalty or Market penetration 

%Transition Probability Matrix of given market

P = [...
    [0.92	0.03	0.02	0.01];...
    [0.02	0.94	0.02	0.01];...
    [0.01	0.01	0.90	0.01];...
    [0.05	0.02	0.06	0.97]];
    

% Intial Market share(Probability state vector) of four Brands

Q0 = [0.40 
    0.32 
    0.18 
    0.10];

%Market share after one week 

Q1 = P*Q0;

%MArket share after two week

Q2 = P*Q1;

%MArket share after n week
prompt = "enter value of n";
n = input(prompt);
for i = 1:n
    Qi = P^i * Q0;
    disp(Qi)
end
