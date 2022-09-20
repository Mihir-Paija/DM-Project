A = [0 1 0 0;
    1 0 1 1;
    0 1 0 1
    0 1 1 0];
x =[1;0;0;1];
choice1 = menu('Pick the one','Largest','Smallest','Near to ...\n');

if choice1 == 1
    B=A;
elseif choice1 == 2
        B=inv(A);

else
    lambda0 = input('Enter the value LAMBDA which is near to .... \n');
    d = A - lambda0.*eye(size(A));
    B = inv(d);
end
iter = 1;
maxerr = 1e-4;
err = 10000;
lambda1 = Inf;

fprintf('\t Iter  \t Eigenvalue \t Eigenvector   \n');
fprintf('\t =========================== \n');
while all(err>maxerr)
    xo = x;
    Y = B*x;
    eigenvalue = max(abs(Y));
    eigenvector = Y./eigenvalue;
    x = eigenvector;
    err = abs(sum(xo-x));
    lambda1 = eigenvalue;
    disp([iter lambda1 x']);
    iter = iter + 1;
end
fprintf('Method converge in %d iteration \n',iter-1);
disp('==============')
if choice1 == 1
    fprintf('The Largest eigenvalue is %5.5f \n',lambda1);
elseif choice1 == 2
    fprintf('The Smallest eigenvalue is %5.5f \n',1/lambda1);
elseif choice1 == 3
    fprintf('The Nearest eigenvalue to %5.3f is %5.5f \n',lambda0,lambda0+1/lambda1);

end