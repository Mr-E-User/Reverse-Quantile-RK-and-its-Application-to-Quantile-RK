function [xkplus1] = qRKalgstep(A,xk,b,q)

    % Gather matrix data, temporary computational values, quantile Q, and find admissible indices
    [~,n]   = size(A);
    N1tmp   = b - A * xk;
    N1      = abs(N1tmp);
    Q       = quantile(N1, q);
    N2      = find(N1 <= Q);

    % Randomly select i from the admissible indices.
    % In the event N2 is a 1D array, randsample(N2, 1) produces a random value from 1 to N2 in place of 
    if size(N2) == size(1)
        i = N2;
    else
        i = randsample(N2, 1);
    end

    % x_k+1 = x_k + (b_i - <a_i,x_k>) a_i
    xkplus1 = xk + A(i,1:n)' * N1tmp(i); 
end