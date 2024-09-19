function [] = dqRKiteratestimeitfunction(A,b,q0,q1,max_iter)

    % Gather matrix and initial data
    [m,n]   = size(A);
    xk      = zeros(n,1);

    % Run the algorithm for max_iter iterations
    for iter = 1:max_iter
        xk  = dqRKalgstep(A,xk,b,q0,q1);
    end 
end