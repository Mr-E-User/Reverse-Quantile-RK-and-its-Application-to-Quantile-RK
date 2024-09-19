function [] = qRKiteratestimeitfunction(A,b,q,max_iter)

    % Gather matrix and initial data
    [m,n]   = size(A);
    xk      = zeros(n,1);

    % Run the algorithm for max_iter iterations
    for iter = 1:max_iter
        xk = qRKalgstep(A,xk,b,q); 
    end 
end