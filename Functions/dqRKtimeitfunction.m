function [iter] = dqRKtimeitfunction(A,x,b,q0,q1,thresh)
    
    % Gather matrix data and initial values
    [m,n]   = size(A);
    iter    = 1;
    xk      = zeros(n,1);
    err     = norm(xk - x)^2;

    % Continue updating xk until the error threshold is met
    while err > thresh
        xk      = dqRKalgstep(A,xk,b,q0,q1); 
        iter    = iter + 1;
        err     = norm(xk - x)^2;
    end 
end