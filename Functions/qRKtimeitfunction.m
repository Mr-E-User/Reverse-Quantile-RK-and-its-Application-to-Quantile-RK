function [iter] = qRKtimeitfunction(A,x,b,q,thresh)

    % Gather matrix data and initial values
    [m,n]   = size(A);
    iter    = 1;
    xk      = zeros(n,1);
    err     = norm(xk - x)^2;

    % Continue updating xk until the error threshold is met
    while err > thresh
        xk      = qRKalgstep(A,xk,b,q); 
        iter    = iter + 1;
        err     = norm(xk - x)^2;
    end 
end