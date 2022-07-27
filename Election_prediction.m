%Using the Markov chain to predict the outcome of an election in a given situation

%the transformation probabilit matrix is 
P = [0.72	0.06	0.03	0.12	0.06	0.09;
0.10	0.68	0.05	0.10	0.09	0.12;
0.09	0.18	0.79	0.24	0.13	0.19;
0	0.03	0.05	0.32	0.10	0.23;
0.09	0.05	0.05	0.07	0.59	0.16;
0	0	0.03	0.15	0.03	0.21
];
T = P.';
%the initial vote distribution is
Q_0 = [0.50;
0.22;
0.05;
0.11;
0.09;
0.03];


%vote distribution after n election cycle
prompt = "enter value of n \n";
n = input(prompt);
for i = 1:n
    Q_i = T^i * Q_0;
    fprintf("vote distribution after %d election cycle\n",i);
    
    disp(Q_i);
end

